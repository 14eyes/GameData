require("Actor/ActorCommon")
local NPCEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")
local BaseDailyNpc = require("Actor/Npc/BaseDailyNpc")

local DailyNpc = class("DailyNpc", BaseDailyNpc)
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyNpcEventType = NPCEventType.DailyNpcEventType
DailyNpc.OnAction = 0
DailyNpc.BubbleData = nil
DailyNpc.ConfigData = nil
local talkInterval = {}
local n = 8
talkInterval[1] = 5
talkInterval[2] = n
DailyNpc.TalkInterval = talkInterval
DailyNpc.Pattern = voicePattern.SOLO
DailyNpc.TalkMode = talkMode.BOTH
DailyNpc.BubbleTime = 5
DailyNpc.BubbleIntervalMin = 7
DailyNpc.BubbleIntervalMax = 10
DailyNpc.BubblePath = nil
DailyNpc.ConfigPath = nil
DailyNpc.IsPreparingData = false
DailyNpc.IsDataInited = false

function DailyNpc:PrepareNpcDataAndStart()
    if self.IsPreparingData == true then
        return
    end

    self.ID = self:GetNpcConfigId()
    local str = tostring(self.ID)
    self.BubblePath = "Actor/Npc/Config/NpcBubble/Bubble" .. str
    self.ConfigPath = "Actor/Npc/Config/NpcConfig/Config" .. str
    self.IsPreparingData = true
    actorUtils.PrepareData(self.OnPrepareNpcData, self, self.BubblePath, self.ConfigPath)
end

function DailyNpc:OnPrepareNpcData()
    self.IsPreparingData = false
    if self.uActor == nil then
        return
    end

    self:DataInit()
    self:InitBaseConfig()
    self.IsDataInited = true
    self.uActor:OnDataInited()
    self:StartDaily()
    self.uActor:HandleExternalRecover()
end

function DailyNpc:DataInit()
    if NG_HSOD_DEBUG then
        if UNITY_EDITOR then
            util.unrequire(self.BubblePath)
            util.unrequire(self.ConfigPath)
        end
    end

    self.ID = self:GetNpcConfigId()
    local v = require(self.BubblePath)
    local require2 = require(self.ConfigPath)
    if v ~= false and v ~= true then
        self.BubbleData = v.Data
        self:InitBubble()
    end

    if require2 ~= false and require2 ~= true then
        self.ConfigData = require2.Data
    end

    self.BubblePath = nil
    self.ConfigPath = nil
end

function DailyNpc:Start()
    self.uActor:SetIsDaily(true)
    if self.IsDataInited == true then
        self:StartDaily()
        self.uActor:HandleExternalRecover()
    else
        self:PrepareNpcDataAndStart()
    end
end

function DailyNpc:CheckShow()
    if self.IsDataInited ~= true then
        self.uActor:Hide(true)
    end
end

function DailyNpc:InitBubble()
    self.IsInitiator = self.BubbleData.IsInitiator
    if self.BubbleData.Pattern ~= nil then
        self.Pattern = self.BubbleData.Pattern
    end

    if self.BubbleData.TalkMode ~= nil then
        self.TalkMode = self.BubbleData.TalkMode
    end

    if self.BubbleData.BubbleTime ~= nil then
        self.BubbleTime = self.BubbleData.BubbleTime
    end

    if self.BubbleData.BubbleInterval ~= nil then
        self.BubbleIntervalMin = self.BubbleData.BubbleInterval[1]
        self.BubbleIntervalMax = self.BubbleData.BubbleInterval[2]
    end

    if self.BubbleData.TalkInterval ~= nil then
        self.TalkInterval = self.BubbleData.TalkInterval
    end

    if self.BubbleData.IsInitiator ~= nil then
        self.IsInitiator = self.BubbleData.IsInitiator
    end
end

function DailyNpc:Register()
    self:RegisterMode(NpcModeType.MODE_HIDE)
    self:RegisterMode(NpcModeType.MODE_BANDAILY)
end

function DailyNpc:InvokeOnFinalTalkFinish() end

function DailyNpc:InvokeOnResetFreeStyle(arg1)
    self:Recover()
end

function DailyNpc:RecoverFromCollisionEnter() end

function DailyNpc:Recover()
    self.OnAction = 0
    self:Standby()
    self:DoFreeStateTrigger()
end

function DailyNpc:OnEvent(arg1)
    if arg1.evtType == dailyNpcEventType.STARTDAILY then
        self:StartDaily()
    else
        if arg1.evtType == dailyNpcEventType.HIDESELF then
            self:SwitchMode(NpcModeType.MODE_HIDE)
        else
            if arg1.evtType == dailyNpcEventType.BANDAILY then
                self:SwitchMode(NpcModeType.MODE_BANDAILY)
            end
        end
    end
end

function DailyNpc:ModeHideSelf()
    self:SwitchMode(NpcModeType.MODE_HIDE)
end

function DailyNpc:RecoverDaily()
    self:StartDaily()
end

function DailyNpc:ModeBanDaily()
    self:SwitchMode(NpcModeType.MODE_BANDAILY)
end

function DailyNpc:OnCollisionEnter(arg1)
    if self.OnAction == 1 then
        return
    end

    if not arg1.isSprint then
        if not arg1.isRun then
            goto lbl_74
        end
    end

    if arg1.isFromBack then
        self.OnAction = 1
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetPos()
        local tbl = {x = pos.x - avatarPos.x, y = pos.y}
        local n = -avatarPos.y
        tbl.z = pos.z - avatarPos.z
        tbl[1] = n
        self:Standby()
        self:TurnTo(tbl)
        self:DoFreeStyleTask(9010, true, self.RecoverFromCollisionEnter)
    else
        self.OnAction = 1
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        self:Standby()
        self:TurnTo(tbl)
        self:DoFreeStyleTask(9020, true, self.RecoverFromCollisionEnter)
    end

    ::lbl_74::
end

function DailyNpc:StartBubble()
    math.randomseed(os.time())
    local n = math.random(10, 20)
    if self.BubbleData == nil then
        return
    end

    local bubbleData = self.BubbleData
    if self.Pattern == voicePattern.SOLO then
        self:CallDelay(n, self.ShowBubble)
    else
        if self.Pattern == voicePattern.TALK then
            self:CallDelay(n, self.ShowTalk)
        end
    end
end

function DailyNpc:ShowTalk()
    if self.BubbleData.IsInitiator == 1 then
        if self.BubbleData.TalkData ~= nil then
            math.randomseed(os.time())
            self.index = math.random(1, #self.BubbleData.TalkData)
            self.TalkData = self.BubbleData.TalkData[self.index]
            self.DialogData = self.TalkData.DialogData
            if self.TalkData.TalkInterval ~= nil then
                self.TalkInterval = self.TalkData.TalkInterval
            end

            if self.TalkData.TargetList ~= nil then
                self.TargetList = self.TalkData.TargetList
            end

            self.Dialog = self.DialogData[1]
            self:Talk(self.DialogData[1])
        end
    end
end

function DailyNpc:Talk(arg1)
    local mode = self.TalkMode
    if arg1.Mode ~= nil then
        mode = arg1.Mode
    end

    if mode == talkMode.BOTH then
        self:TriggerNpcSpeechBubble(self.ID, arg1.Id)
        self:SayDialogAudio(arg1.Id)
    else
        if mode == talkMode.BUBBLE then
            self:TriggerNpcSpeechBubble(self.ID, arg1.Id)
        else
            if mode == talkMode.VOICE then
                self:SayDialogAudio(arg1.Id)
            end
        end
    end

    self:TalkTime(arg1)
end

function DailyNpc:TalkTime(dialog)
    local bubbleTime = self.BubbleTime
    if dialog.BubbleTime ~= nil then
        bubbleTime = dialog.BubbleTime
    end

    self.Dialog = dialog
    self:CallDelay(bubbleTime, self.CloseTalk)
end

function DailyNpc:CloseTalk()
    local id = self.ID
    self:ClearNpcSpeechBubble(id)
    self:SendMessage(self.Dialog)
end

function DailyNpc:SendMessage(arg1)
    if arg1.TargetIndex == 0 then
        self.EndTalk(self)
        if self.TargetList ~= nil then
            for i = 1, #self.TargetList do
                local actor = actorMgr:GetActor(self.TargetList[i])
                if actor ~= nil then
                    actor:EndTalk()
                end
            end
        end

        return
    end

    local target = arg1.Target
    local actor = actorMgr:GetActor(target)
    local bubbleIntervalMin = self.BubbleIntervalMin
    local bubbleIntervalMax = self.BubbleIntervalMax
    if arg1.BubbleInterval ~= nil then
        bubbleIntervalMin = arg1.BubbleInterval[1]
        bubbleIntervalMax = arg1.BubbleInterval[2]
    end

    self.CallDelay(self, math.random(bubbleIntervalMin, bubbleIntervalMax), function()
        if actor ~= nil then
            actor:ReceiveTalk(self.index, arg1.TargetIndex)
        end
    end)
end

function DailyNpc:EndTalk()
    if self.IsInitiator == 1 then
        self:CallDelay(math.random(self.TalkInterval[1], self.TalkInterval[2]), function(arg1)
            arg1:ShowTalk()
        end)
    end
end

function DailyNpc:ReceiveTalk(index, arg2)
    local v = self.BubbleData.TalkData[index].DialogData[arg2]
    self.index = index
    self.TalkData = self.BubbleData.TalkData[self.index]
    self.DialogData = self.TalkData.DialogData
    if self.TalkData.TalkInterval ~= nil then
        self.TalkInterval = self.TalkData.TalkInterval
    end

    if self.TalkData.TargetList ~= nil then
        self.TargetList = self.TalkData.TargetList
    end

    self:Talk(v)
end

function DailyNpc:ShowBubble()
    if self.BubbleData == nil then
        return
    end

    self.DialogData = self.BubbleData.DialogData
    if self.DialogData ~= nil then
        math.randomseed(tostring(os.time()):reverse():sub(1, 6))
        self.index = math.random(1, #self.DialogData)
        local v = self.DialogData[self.index]
        local mode = self.TalkMode
        if self.DialogData[self.index].Mode ~= nil then
            mode = self.DialogData[self.index].Mode
        end

        if mode == talkMode.BOTH then
            self:TriggerNpcSpeechBubble(self.ID, v.Id)
            self:SayDialogAudio(v.Id)
        else
            if mode == talkMode.BUBBLE then
                self:TriggerNpcSpeechBubble(self.ID, v.Id)
            else
                if mode == talkMode.VOICE then
                    self:SayDialogAudio(v.Id)
                end
            end
        end

        self:BubbleTimer()
    end
end

function DailyNpc:BubbleTimer()
    local bubbleTime = self.BubbleTime
    if self.DialogData[self.index].BubbleTime ~= nil then
        bubbleTime = self.DialogData[self.index].BubbleTime
    end

    self:CallDelay(bubbleTime, self.CloseBubble)
end

function DailyNpc:CloseBubble()
    local id = self.ID
    self:ClearNpcSpeechBubble(id)
    self:BubbleGap()
end

function DailyNpc:BubbleGap()
    local bubbleIntervalMin = self.BubbleIntervalMin
    local bubbleIntervalMax = self.BubbleIntervalMax
    if self.DialogData[self.index].BubbleInterval ~= nil then
        bubbleIntervalMin = self.DialogData[self.index].BubbleInterval[1]
        bubbleIntervalMax = self.DialogData[self.index].BubbleInterval[2]
    end

    self:CallDelay(math.random(bubbleIntervalMin, bubbleIntervalMax), self.ShowBubble)
end

return DailyNpc

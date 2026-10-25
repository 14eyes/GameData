require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")
local NPCEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")
local NPCUtil = require("Actor/Npc/NPCUtil")

local CopyNpc = {}
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local voicePattern = NpcConfigCommon.VoicePattern
local talkMode = NpcConfigCommon.TalkMode
local dailyNpcEventType = NPCEventType.DailyNpcEventType
CopyNpc.OnAction = 0

function CopyNpc:Start()
    local npcConfigId = self:GetNpcConfigId()
    local modf = math.modf(npcConfigId / 100)
    self:NotifyTo("Npc" .. tostring(modf), NPCUtil.NpcEventType.HIDESELF, true)
end

function CopyNpc:OnDestroy()
    local npcConfigId = self:GetNpcConfigId()
    local modf = math.modf(npcConfigId / 100)
    self:NotifyTo("Npc" .. tostring(modf), NPCUtil.NpcEventType.STARTDAILY, true)
end

function CopyNpc:Register() end

function CopyNpc:InvokeOnResetFreeStyle(arg1)
    if arg1 == 9011 or arg1 == 9012 then
        self:RecoverFromFreeStyle()
    end
end

function CopyNpc:InvokeOnFinalTalkFinish()
    print("DailyNpc InvokeOnFinalTalkFinish")
    self:RecoverFreestyle()
end

function CopyNpc:RecoverFromFreeStyle()
    self:Recover()
end

function CopyNpc:RecoverFromCollisionEnter()
    self:Recover()
end

function CopyNpc:RecoverFreestyle()
    self.OnAction = 0
    self:Standby()
    self:DoFreeStateTrigger()
end

function CopyNpc:Recover() end
function CopyNpc:OnEvent(arg1) end

function CopyNpc:OnCollisionEnter(arg1)
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

return CopyNpc

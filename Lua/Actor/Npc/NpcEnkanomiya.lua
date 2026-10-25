require("Actor/ActorCommon")
local DailyNpc = require("Actor/Npc/DailyNpc")

local NpcEnkanomiya = class("NpcEnkanomiya", DailyNpc)

function NpcEnkanomiya:DataInit()
    self.ID = self:GetNpcConfigId()
    util.begin_sample("[NpcEnkanomiya]RequireLua")
    local v = require(self.ConfigPath)
    local require2 = require(self.BubblePath)
    util.end_sample()
    if v ~= false and v ~= true then
        self.ConfigData = v.Data
    end

    if self.ConfigData == nil then
        print("NpcEnkanomiya config data nil , NPC_id: " .. tostring(self.ID))
        return
    end

    util.begin_sample("[NpcEnkanomiya]DailyScheduleData")
    if self.ConfigData.DailyScheduleData ~= nil then
        for i = 1, #self.ConfigData.DailyScheduleData do
            local v2 = self.ConfigData.DailyScheduleData[i]
            if v2 ~= nil then
                local get = CS.MoleMole.DailyAction.Get()
                if v2.condition ~= nil then
                    get.condition = NpcUtil.GetConditionData(v2.condition)
                    if v2.condition.priority ~= nil then
                        get.priority = v2.condition.priority
                    end
                end

                if v2.conditionGrp ~= nil then
                    get:SetConditionGroup(v2.conditionGrp)
                end

                if v2.actionPoints ~= nil then
                    get:SetActionPointCapacity(#v2.actionPoints)
                    for j, actionPoint in ipairs(v2.actionPoints) do
                        local get2 = CS.MoleMole.DummyActionPoint.Get()
                        get:AddActionPoint(get2)
                        if nil ~= actionPoint.dummypoint then
                            local dummypoint = CS.MoleMole.DummyPoint.Get()
                            if nil ~= actionPoint.dummypoint.pos then
                                dummypoint:SetPos(actionPoint.dummypoint.pos.x, actionPoint.dummypoint.pos.y, actionPoint.dummypoint.pos.z)
                            end

                            if nil ~= actionPoint.dummypoint.rot then
                                dummypoint:SetRot(actionPoint.dummypoint.rot.x, actionPoint.dummypoint.rot.y, actionPoint.dummypoint.rot.z)
                            end

                            get2.dummypoint = dummypoint
                        end

                        get2.action = actionPoint.action
                        get2.time = actionPoint.time
                        get2.freestyle = actionPoint.freestyle
                        get2.actionPointType = actionPoint.actionPointType
                        get2.actionPointId = actionPoint.actionPointId
                        get2.phoneme = actionPoint.phoneme
                        get2.emotion = actionPoint.emotion
                        get2.disableBlink = actionPoint.disableBlink
                    end
                end

                if v2.schedulePoints ~= nil then
                    get:SetSchedulePointCapacity(#v2.schedulePoints)
                    for j, schedulePoint in ipairs(v2.schedulePoints) do
                        local get2 = CS.MoleMole.SchedulePoint.Get()
                        get:AddSchedulePoint(get2)
                        get2.startTime = schedulePoint.startTime
                        get2.id = schedulePoint.id
                        get2.tag = schedulePoint.tag
                        get2.actionType1 = schedulePoint.actionType1
                        get2.actionType2 = schedulePoint.actionType2
                        get2.actionType3 = schedulePoint.actionType3
                        if schedulePoint.waitTime ~= nil then
                            get2.waitTime = schedulePoint.waitTime
                        end

                        if schedulePoint.isKeySchedulePoint ~= nil then
                            get2.isKeySchedulePoint = schedulePoint.isKeySchedulePoint
                        end
                    end
                end

                get.transTeleport = v2.transTeleport
                self.uActor:AddDailyConfigData(get)
            end
        end

        if self.ConfigData.DailyScheduleData.refreshDailyActionImmediately ~= nil then
            self.uActor:SetRefreshDailyImme(self.ConfigData.DailyScheduleData.refreshDailyActionImmediately)
        end
    end

    util.end_sample()
    util.begin_sample("[NpcEnkanomiya]ActionPointWeights")
    if self.ConfigData.ActionPointWeights ~= nil then
        for i = 1, #self.ConfigData.ActionPointWeights do
            local actionPointWeight = self.ConfigData.ActionPointWeights[i]
            if actionPointWeight ~= nil then
                self.uActor:SetActionPointWeight(actionPointWeight.type, actionPointWeight.weight)
            end
        end
    end

    util.end_sample()
    util.begin_sample("[NpcEnkanomiya]StartDailyFSM")
    self.uActor:StartDailyFSM()
    util.end_sample()
    util.begin_sample("[NpcEnkanomiya]tempBubbleData")
    if require2 ~= false and require2 ~= true then
        if require2.BubbleData ~= nil then
            self.bubbleData2 = require2.BubbleData
            self.bubbleData = nil
        else
            self.bubbleData = require2.Data
            self.bubbleData2 = nil
        end
    end

    self:TryCreateDailySpeechBubbleTask()
    util.end_sample()
    util.begin_sample("[NpcEnkanomiya]HomeScheduleData")
    self:TryCreateHomeTask(self.ConfigData.HomeScheduleData)
    util.end_sample()
end

function NpcEnkanomiya:TryCreateDailySpeechBubbleTask()
    if self.speechBubbleTask ~= nil then
        return
    end

    if self.bubbleData2 ~= nil then
        self:CreateSpeechBubbleTaskWithData2(self.ID, self.bubbleData2)
    else
        if self.bubbleData ~= nil then
            self:CreateSpeechBubbleTaskWithData(self.ID, self.bubbleData)
        end
    end
end

function NpcEnkanomiya:CreateSpeechBubbleTaskWithData2(arg1, arg2)
    if arg2 == nil then
        print("npc bubble data is nil " .. tostring(self.ID))
        return
    end

    self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
    if self.speechBubbleTask ~= nil then
        for i = 1, #arg2 do
            if arg2[i] ~= nil then
                local get = CS.MoleMole.DailyBubbleData.Get()
                if arg2[i].condition ~= nil then
                    get.condition = NpcUtil.GetConditionData(arg2[i].condition)
                    if arg2[i].condition.priority ~= nil then
                        get.priority = arg2[i].condition.priority
                    end
                end

                if arg2[i].bubbleDatas ~= nil then
                    for j, bubbleData in ipairs(arg2[i].bubbleDatas) do
                        local v = CS.MoleMole.BubbleData.Get()
                        v.dialogId = bubbleData.dialogId
                        v.duration = bubbleData.duration
                        v.intervalMin = bubbleData.intervalMin
                        v.intervalMax = bubbleData.intervalMax
                        get:AddBubbleData(v)
                    end
                end

                if arg2[i].hideSpeechBubble ~= nil then
                    get.hideSpeechBubble = arg2[i].hideSpeechBubble
                else
                    get.hideSpeechBubble = false
                end

                self.speechBubbleTask:AddDailyBubbleData(get)
            end
        end

        self.speechBubbleTask:StartDailyBubble()
    end
end

function NpcEnkanomiya:CreateSpeechBubbleTaskWithData(arg1, arg2)
    if arg2 == nil then
        print("npc bubble data is nil " .. tostring(self.ID))
        return
    end

    self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
    if self.speechBubbleTask ~= nil then
        local dialogData = arg2.DialogData
        local v = arg2.BubbleInterval[1]
        local v2 = arg2.BubbleInterval[2]
        if dialogData ~= nil then
            for i = 1, #dialogData do
                if dialogData[i].BubbleInterval ~= nil then
                    v = dialogData[i].BubbleInterval[1]
                    v2 = dialogData[i].BubbleInterval[2]
                end

                self.speechBubbleTask:CreateNpcSpeechBubble(arg1, 0, dialogData[i].Id, dialogData[i].BubbleTime, v, v2, false)
            end
        end
    end
end

function NpcEnkanomiya:TryCreateHomeTask(arg1)
    if nil == arg1 then
        return
    end

    if self.homeTask == nil then
        self.homeTask = self:CreateTask(TaskID.HOME_TASK_ID, LuaTaskType.HOME, "Home")
        self.homeTask:InitParam(arg1.actionList, arg1.bubbleGroup, arg1.Greet)
    end
end

function NpcEnkanomiya:OnEvent(arg1) end
function NpcEnkanomiya:StartDay() end
function NpcEnkanomiya:OnCollisionEnter(arg1) end

function NpcEnkanomiya:OnAppear()
    self:CheckShow()
end

function NpcEnkanomiya:CheckShow()
    if NG_HSOD_DEBUG then
        print("\230\184\138\228\184\139\229\174\171npc\230\152\188\229\164\156\232\161\140\228\184\186\229\136\164\230\150\173 " .. tostring(self.alias))
    end

    if self.uActor ~= nil then
        if self.uActor:IsDailySpeechBubbleDisabled() ~= false then
            goto lbl_21
        end
    end

    self.TryCreateDailySpeechBubbleTask(self)
    ::lbl_21::
    self.Unregister(self)
    self.RegisterSelfAbyssalPalaceDay(self, function()
        self:EnkanomiyaDay()
    end)

    self.RegisterSelfAbyssalPalaceNight(self, function()
        self:EnkanomiyaNight()
    end)

    if actorUtils.IsAbyssalPalaceSceneNight() then
        if NG_HSOD_DEBUG then
            print("\231\142\176\229\156\168\230\152\175\230\153\154\228\184\138 " .. tostring(self.alias))
        end

        self.EnkanomiyaNight(self)
    else
        if actorUtils.IsAbyssalPalaceSceneDay() then
            if NG_HSOD_DEBUG then
                print("\231\142\176\229\156\168\230\152\175\231\153\189\229\164\169 " .. tostring(self.alias))
            end

            self.EnkanomiyaDay(self)
        end
    end
end

function NpcEnkanomiya:OnDisappear()
    self:Unregister()
    self.speechBubbleTask = nil
end

function NpcEnkanomiya:Start()
    if NG_HSOD_DEBUG then
        print("NpcEnkanomiya Start " .. tostring(self.alias))
    end

    self.uActor:SetIsDaily(true)
    if self.IsDataInited == true then
        self:StartDaily()
        self.uActor:HandleExternalRecover()
    else
        self:PrepareNpcDataAndStart()
    end
end

function NpcEnkanomiya:EnkanomiyaDay()
    if NG_HSOD_DEBUG then
        print("\231\153\189\229\164\169\233\154\144\232\151\143\232\135\170\229\183\177=" .. tostring(self.alias))
    end

    self:HideSelf()
end

function NpcEnkanomiya:EnkanomiyaNight()
    if NG_HSOD_DEBUG then
        print("\230\153\154\228\184\138\230\152\190\231\164\186\232\135\170\229\183\177=" .. tostring(self.alias))
    end

    self:ShowSelf()
end

function NpcEnkanomiya:Unregister()
    print("\229\143\150\230\182\136\230\179\168\229\134\140")
    self.UnregisterSelfAbyssalPalaceDay(self, function()
        self:EnkanomiyaDay()
    end)

    self.UnregisterSelfAbyssalPalaceNight(self, function()
        self:EnkanomiyaNight()
    end)
end

return NpcEnkanomiya

require("Actor/ActorCommon")
local SubGlobalActorProxy = require("Actor/SubGlobal/SubGlobalActorProxy")

local LimitRegionGlobalActor = class("LimitRegionGlobalActor", SubGlobalActorProxy)
LimitRegionGlobalActor.defaultAlias = "LimitRegionGlobal"
LimitRegionGlobalActor.TeachingDialogList = {{dialogID = 3500101, audioEvtName = "", duration = 3}}
LimitRegionGlobalActor.TeachingDuration = 0
LimitRegionGlobalActor.TeachingDurationCnt = 0
LimitRegionGlobalActor.Teaching = false
LimitRegionGlobalActor.WarningDialogList = {}
LimitRegionGlobalActor.WarningDialogIndex = 1
LimitRegionGlobalActor.WarningDuration = 0
LimitRegionGlobalActor.WarningDurationCnt = 0
LimitRegionGlobalActor.testLength = 25
LimitRegionGlobalActor.transOffset = 7
LimitRegionGlobalActor.checkTask = nil
LimitRegionGlobalActor.pauseTask = false
LimitRegionGlobalActor.Warnning = false

function LimitRegionGlobalActor:PerformWarningNarrator()
    if self.WarningDialogList == nil then
        return -1.0
    end

    if #self.WarningDialogList < self.WarningDialogIndex then
        return -1.0
    end

    local warningDialog = self.WarningDialogList[self.WarningDialogIndex]
    if warningDialog == nil then
        self.WarningDialogIndex = 1
        warningDialog = self.WarningDialogList[self.WarningDialogIndex]
        if warningDialog == nil then
            return -1.0
        end
    end

    self.WarningDuration = warningDialog.duration
    self.WarningDurationCnt = 0
    local dialogID = warningDialog.dialogID
    self:SayWarningNarrator(dialogID)
    return self.WarningDuration
end

function LimitRegionGlobalActor:StopPerformAllNarrator()
    self:StopWarningNarrator()
end

function LimitRegionGlobalActor:PerformTeachingNarrator()
    local teachingDialog = self.TeachingDialogList[1]
    if teachingDialog == nil then
        return false
    end

    local dialogID = teachingDialog.dialogID
    self.TeachingDuration = teachingDialog.duration
    self.TeachingDurationCnt = 0
    local audioEvtName = teachingDialog.audioEvtName
    self:SayWarningNarrator(dialogID)
    if audioEvtName ~= nil and audioEvtName ~= "" then
        self.uActor:PlayAudio(audioEvtName)
    end

    self.Teaching = true
end

function LimitRegionGlobalActor:Register()
    print("CreateLimitRegion")
    if self.checkTask == nil then
        self.checkTask = self:CreateTask(self.MOVE_TASK_ID, LuaTaskType.LIMIT_REGION, "Lock")
        self.checkTask:InitWithData(self, self)
    end
end

function LimitRegionGlobalActor:UseFreshmeatRegion() end
function LimitRegionGlobalActor:OnFinishedRegion() end
function LimitRegionGlobalActor:FinishLimitRegion() end

function LimitRegionGlobalActor:Unregister()
    if self.checkTask ~= nill then
        self.checkTask:FinishTask()
        self.checkTask = nil
    end
end

function LimitRegionGlobalActor:Start() end
return LimitRegionGlobalActor

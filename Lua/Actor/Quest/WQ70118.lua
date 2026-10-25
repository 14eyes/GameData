require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70118 = class("Quest70118", QuestActorProxy)
Quest70118.defaultAlias = "Quest70118"
local clientData
local this
local mainID
local actorAlias

function Quest70118:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011801"] = self.OnSubStart7011801,
        ["7011802"] = self.OnSubStart7011802,
        ["7011803"] = self.OnSubStart7011803,
        ["7011804"] = self.OnSubStart7011804,
        ["7011805"] = self.OnSubStart7011805,
        ["7011806"] = self.OnSubStart7011806,
        ["7011807"] = self.OnSubStart7011807,
        ["7011808"] = self.OnSubStart7011808,
        ["7011809"] = self.OnSubStart7011809,
        ["7011810"] = self.OnSubStart7011810,
        ["7011811"] = self.OnSubStart7011811,
        ["7011812"] = self.OnSubStart7011812,
        ["7011813"] = self.OnSubStart7011813,
        ["7011814"] = self.OnSubStart7011814,
        ["7011815"] = self.OnSubStart7011815
    }
end

function Quest70118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011801"] = self.OnSubFinish7011801,
        ["7011802"] = self.OnSubFinish7011802,
        ["7011803"] = self.OnSubFinish7011803,
        ["7011804"] = self.OnSubFinish7011804,
        ["7011805"] = self.OnSubFinish7011805,
        ["7011806"] = self.OnSubFinish7011806,
        ["7011807"] = self.OnSubFinish7011807,
        ["7011808"] = self.OnSubFinish7011808,
        ["7011809"] = self.OnSubFinish7011809,
        ["7011810"] = self.OnSubFinish7011810,
        ["7011811"] = self.OnSubFinish7011811,
        ["7011812"] = self.OnSubFinish7011812,
        ["7011813"] = self.OnSubFinish7011813,
        ["7011814"] = self.OnSubFinish7011814,
        ["7011815"] = self.OnSubFinish7011815
    }
end

function Quest70118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7011807"] = self.OnSubFailed7011807,
        ["7011808"] = self.OnSubFailed7011808,
        ["7011812"] = self.OnSubFailed7011812,
        ["7011813"] = self.OnSubFailed7011813
    }
end

function Quest70118:Start()
    print("Start")
end

function Quest70118:OnDestroy()
    print("OnDestroy")
end

function Quest70118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70118:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70118:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70118:OnSubStart7011801(arg1)
    print("OnSubStart7011801")
    actorUtils.FinishQuestWithParam({false}, {7011801})
end

function Quest70118:OnSubFinish7011801(arg1)
    print("OnSubFinish7011801")
end

function Quest70118:OnSubStart7011802(arg1)
    print("OnSubStart7011802")
end

function Quest70118:OnSubFinish7011802(arg1)
    print("OnSubFinish7011802")
end

function Quest70118:OnSubStart7011803(arg1)
    print("OnSubStart7011803")
end

function Quest70118:OnSubFinish7011803(arg1)
    print("OnSubFinish7011803")
end

function Quest70118:OnSubStart7011804(arg1)
    print("OnSubStart7011804")
end

function Quest70118:OnSubFinish7011804(arg1)
    print("OnSubFinish7011804")
end

function Quest70118:OnSubStart7011805(arg1)
    print("OnSubStart7011805")
end

function Quest70118:OnSubFinish7011805(arg1)
    print("OnSubFinish7011805")
end

function Quest70118:OnSubStart7011806(arg1)
    print("OnSubStart7011806")
    actorUtils.FinishQuestWithParam({false}, {7011806})
end

function Quest70118:OnSubFinish7011806(arg1)
    print("OnSubFinish7011806")
end

function Quest70118:OnSubStart7011807(arg1)
    print("OnSubStart7011807")
end

function Quest70118:OnSubFinish7011807(arg1)
    print("OnSubFinish7011807")
end

function Quest70118:OnSubFailed7011807(arg1)
    print("OnSubFailed7011807")
    this:RecycleAllRes()
end

function Quest70118:OnSubStart7011808(arg1)
    print("OnSubStart7011808")
end

function Quest70118:OnSubFinish7011808(arg1)
    print("OnSubFinish7011808")
end

function Quest70118:OnSubFailed7011808(arg1)
    print("OnSubFailed7011808")
    this:RecycleAllRes()
end

function Quest70118:OnSubStart7011809(arg1)
    print("OnSubStart7011809")
end

function Quest70118:OnSubFinish7011809(arg1)
    print("OnSubFinish7011809")
end

function Quest70118:OnSubStart7011810(arg1)
    print("OnSubStart7011810")
end

function Quest70118:OnSubFinish7011810(arg1)
    print("OnSubFinish7011810")
end

function Quest70118:OnSubStart7011811(arg1)
    print("OnSubStart7011811")
    actorUtils.FinishQuestWithParam({false}, {7011811})
end

function Quest70118:OnSubFinish7011811(arg1)
    print("OnSubFinish7011811")
end

function Quest70118:OnSubStart7011812(arg1)
    print("OnSubStart7011812")
end

function Quest70118:OnSubFinish7011812(arg1)
    print("OnSubFinish7011812")
end

function Quest70118:OnSubFailed7011812(arg1)
    print("OnSubFailed7011812")
    this:RecycleAllRes()
end

function Quest70118:OnSubStart7011813(arg1)
    print("OnSubStart7011813")
end

function Quest70118:OnSubFinish7011813(arg1)
    print("OnSubFinish7011813")
end

function Quest70118:OnSubFailed7011813(arg1)
    print("OnSubFailed7011813")
    this:RecycleAllRes()
end

function Quest70118:OnSubStart7011814(arg1)
    print("OnSubStart7011814")
end

function Quest70118:OnSubFinish7011814(arg1)
    print("OnSubFinish7011814")
end

function Quest70118:OnSubStart7011815(arg1)
    print("OnSubStart7011815")
end

function Quest70118:OnSubFinish7011815(arg1)
    print("OnSubFinish7011815")
end

return Quest70118

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76038 = class("Quest76038", QuestActorProxy)
Quest76038.defaultAlias = "Quest76038"
local clientData
local this
local mainID
local actorAlias

function Quest76038:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603801"] = self.OnSubStart7603801,
        ["7603815"] = self.OnSubStart7603815,
        ["7603805"] = self.OnSubStart7603805,
        ["7603806"] = self.OnSubStart7603806,
        ["7603807"] = self.OnSubStart7603807,
        ["7603808"] = self.OnSubStart7603808,
        ["7603809"] = self.OnSubStart7603809,
        ["7603810"] = self.OnSubStart7603810,
        ["7603811"] = self.OnSubStart7603811,
        ["7603812"] = self.OnSubStart7603812,
        ["7603813"] = self.OnSubStart7603813,
        ["7603814"] = self.OnSubStart7603814,
        ["7603816"] = self.OnSubStart7603816,
        ["7603803"] = self.OnSubStart7603803,
        ["7603804"] = self.OnSubStart7603804,
        ["7603802"] = self.OnSubStart7603802
    }
end

function Quest76038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603801"] = self.OnSubFinish7603801,
        ["7603815"] = self.OnSubFinish7603815,
        ["7603805"] = self.OnSubFinish7603805,
        ["7603806"] = self.OnSubFinish7603806,
        ["7603807"] = self.OnSubFinish7603807,
        ["7603808"] = self.OnSubFinish7603808,
        ["7603809"] = self.OnSubFinish7603809,
        ["7603810"] = self.OnSubFinish7603810,
        ["7603811"] = self.OnSubFinish7603811,
        ["7603812"] = self.OnSubFinish7603812,
        ["7603813"] = self.OnSubFinish7603813,
        ["7603814"] = self.OnSubFinish7603814,
        ["7603816"] = self.OnSubFinish7603816,
        ["7603803"] = self.OnSubFinish7603803,
        ["7603804"] = self.OnSubFinish7603804,
        ["7603802"] = self.OnSubFinish7603802
    }
end

function Quest76038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76038:Start()
    print("Start")
end

function Quest76038:OnDestroy()
    print("OnDestroy")
end

function Quest76038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76038:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76038:OnMainPaused(arg1) end
function Quest76038:OnMainPaused(arg1) end
function Quest76038:OnMainPaused(arg1) end

function Quest76038:OnSubStart7603801(arg1)
    print("OnSubStart7603801")
    actorUtils.FinishQuestID(false, 7603801)
end

function Quest76038:OnSubFinish7603801(arg1)
    print("OnSubFinish7603801")
end

function Quest76038:OnSubStart7603815(arg1)
    print("OnSubStart7603815")
end

function Quest76038:OnSubFinish7603815(arg1)
    print("OnSubFinish7603815")
end

function Quest76038:OnSubStart7603805(arg1)
    print("OnSubStart7603805")
end

function Quest76038:OnSubFinish7603805(arg1)
    print("OnSubFinish7603805")
end

function Quest76038:OnSubStart7603806(arg1)
    print("OnSubStart7603806")
end

function Quest76038:OnSubFinish7603806(arg1)
    print("OnSubFinish7603806")
end

function Quest76038:OnSubStart7603807(arg1)
    print("OnSubStart7603807")
end

function Quest76038:OnSubFinish7603807(arg1)
    print("OnSubFinish7603807")
end

function Quest76038:OnSubStart7603808(arg1)
    print("OnSubStart7603808")
end

function Quest76038:OnSubFinish7603808(arg1)
    print("OnSubFinish7603808")
end

function Quest76038:OnSubStart7603809(arg1)
    print("OnSubStart7603809")
end

function Quest76038:OnSubFinish7603809(arg1)
    print("OnSubFinish7603809")
end

function Quest76038:OnSubStart7603810(arg1)
    print("OnSubStart7603810")
end

function Quest76038:OnSubFinish7603810(arg1)
    print("OnSubFinish7603810")
end

function Quest76038:OnSubStart7603811(arg1)
    print("OnSubStart7603811")
end

function Quest76038:OnSubFinish7603811(arg1)
    print("OnSubFinish7603811")
end

function Quest76038:OnSubStart7603812(arg1)
    print("OnSubStart7603812")
end

function Quest76038:OnSubFinish7603812(arg1)
    print("OnSubFinish7603812")
end

function Quest76038:OnSubStart7603813(arg1)
    print("OnSubStart7603813")
end

function Quest76038:OnSubFinish7603813(arg1)
    print("OnSubFinish7603813")
end

function Quest76038:OnSubStart7603814(arg1)
    print("OnSubStart7603814")
end

function Quest76038:OnSubFinish7603814(arg1)
    print("OnSubFinish7603814")
end

function Quest76038:OnSubStart7603816(arg1)
    print("OnSubStart7603816")
end

function Quest76038:OnSubFinish7603816(arg1)
    print("OnSubFinish7603816")
end

function Quest76038:OnSubStart7603803(arg1)
    print("OnSubStart7603803")
end

function Quest76038:OnSubFinish7603803(arg1)
    print("OnSubFinish7603803")
end

function Quest76038:OnSubStart7603804(arg1)
    print("OnSubStart7603804")
end

function Quest76038:OnSubFinish7603804(arg1)
    print("OnSubFinish7603804")
end

function Quest76038:OnSubStart7603802(arg1)
    print("OnSubStart7603802")
end

function Quest76038:OnSubFinish7603802(arg1)
    print("OnSubFinish7603802")
end

return Quest76038

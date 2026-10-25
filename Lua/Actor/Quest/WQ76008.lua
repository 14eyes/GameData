require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76008 = class("Quest76008", QuestActorProxy)
Quest76008.defaultAlias = "Quest76008"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600801"] = self.OnSubStart7600801,
        ["7600802"] = self.OnSubStart7600802,
        ["7600803"] = self.OnSubStart7600803,
        ["7600804"] = self.OnSubStart7600804,
        ["7600805"] = self.OnSubStart7600805
    }
end

function Quest76008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600801"] = self.OnSubFinish7600801,
        ["7600802"] = self.OnSubFinish7600802,
        ["7600803"] = self.OnSubFinish7600803,
        ["7600804"] = self.OnSubFinish7600804,
        ["7600805"] = self.OnSubFinish7600805
    }
end

function Quest76008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7600801"] = self.OnSubFailed7600801}
end

function Quest76008:Start()
    print("Start")
end

function Quest76008:OnDestroy()
    print("OnDestroy")
end

function Quest76008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76008:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76008:OnSubStart7600801(arg1)
    print("OnSubStart7600801")
    this:CreateQuestNpc(arg1, npcs.Npc7109.id, 0, false, 0)
end

function Quest76008:OnSubFinish7600801(arg1)
    print("OnSubFinish7600801")
    this:SafeDestroyQuestNpc(npcs.Npc7109.alias, 3)
end

function Quest76008:OnSubFailed7600801(arg1)
    print("OnSubFailed7600801")
    this:SafeDestroyQuestNpc(npcs.Npc7109.alias, 3)
end

function Quest76008:OnSubStart7600802(arg1)
    print("OnSubStart7600802")
end

function Quest76008:OnSubFinish7600802(arg1)
    print("OnSubFinish7600802")
end

function Quest76008:OnSubStart7600803(arg1)
    print("OnSubStart7600803")
end

function Quest76008:OnSubFinish7600803(arg1)
    print("OnSubFinish7600803")
end

function Quest76008:OnSubStart7600804(arg1)
    print("OnSubStart7600804")
end

function Quest76008:OnSubFinish7600804(arg1)
    print("OnSubFinish7600804")
end

function Quest76008:OnSubStart7600805(arg1)
    print("OnSubStart7600805")
end

function Quest76008:OnSubFinish7600805(arg1)
    print("OnSubFinish7600805")
end

return Quest76008

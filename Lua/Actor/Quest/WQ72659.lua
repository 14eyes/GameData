require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72659 = class("Quest72659", QuestActorProxy)
Quest72659.defaultAlias = "Quest72659"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72659:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72659:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265901"] = self.OnSubStart7265901, ["7265902"] = self.OnSubStart7265902}
end

function Quest72659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265901"] = self.OnSubFinish7265901, ["7265902"] = self.OnSubFinish7265902}
end

function Quest72659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265901"] = self.OnSubFailed7265901, ["7265902"] = self.OnSubFailed7265902}
end

function Quest72659:Start()
    print("Start")
end

function Quest72659:OnDestroy()
    print("OnDestroy")
end

function Quest72659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72659:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3200Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2615Data.alias, 3)
end

function Quest72659:OnSubStart7265901(arg1)
    print("OnSubStart7265901")
    self:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 1)
end

function Quest72659:OnSubFinish7265901(arg1)
    print("OnSubFinish7265901")
end

function Quest72659:OnSubFailed7265901(arg1)
    print("OnSubFailed7265901")
end

function Quest72659:OnSubStart7265902(arg1)
    print("OnSubStart7265902")
    self:CreateQuestNpc(arg1, npcs.Npc2615Data.id, 1)
end

function Quest72659:OnSubFinish7265902(arg1)
    print("OnSubFinish7265902")
    self:ActionSafeCall(function(arg1)
        actorUtils.ShowMoonfinTrialMainPage(3)
        arg1:SafeDestroyQuestNpc(npcs.Npc3200Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc2615Data.alias, 3)
    end)
end

function Quest72659:OnSubFailed7265902(arg1)
    print("OnSubFailed7265902")
end

return Quest72659

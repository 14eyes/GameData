require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70509 = class("Quest70509", QuestActorProxy)
Quest70509.defaultAlias = "Quest70509"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70509:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70509:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050901"] = self.OnSubStart7050901,
        ["7050905"] = self.OnSubStart7050905,
        ["7050904"] = self.OnSubStart7050904,
        ["7050902"] = self.OnSubStart7050902,
        ["7050903"] = self.OnSubStart7050903
    }
end

function Quest70509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050901"] = self.OnSubFinish7050901,
        ["7050905"] = self.OnSubFinish7050905,
        ["7050904"] = self.OnSubFinish7050904,
        ["7050902"] = self.OnSubFinish7050902,
        ["7050903"] = self.OnSubFinish7050903
    }
end

function Quest70509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050902"] = self.OnSubFailed7050902}
end

function Quest70509:Start()
    print("Start")
end

function Quest70509:OnDestroy()
    print("OnDestroy")
end

function Quest70509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 1068)
    actorMgr:GetActor("70509"):UnSpawn(gadgets.Gadget70710668Data.alias)
    actorMgr:DestroyEntityActor("Q70509Trigger", 1068, false)
end

function Quest70509:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest70509:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050902) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050902)
            end)
        else
            print("error BartenderUI call")
        end
    end
end

function Quest70509:OnSubStart7050901(arg1)
    print("OnSubStart7050901")
    actorMgr:CreateActorWithPos("Q70509Trigger", "Actor/Gadget/Q70509Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70509:OnSubFinish7050901(arg1)
    print("OnSubFinish7050901")
    self:PaimonDis()
end

function Quest70509:OnSubStart7050905(arg1)
    print("OnSubStart7050905")
end

function Quest70509:OnSubFinish7050905(arg1)
    print("OnSubFinish7050905")
end

function Quest70509:OnSubStart7050904(arg1)
    print("OnSubStart7050904")
    self:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1045Data.alias):SitOnChair(8010)
end

function Quest70509:OnSubFinish7050904(arg1)
    print("OnSubFinish7050904")
end

function Quest70509:OnSubStart7050902(arg1)
    print("OnSubStart7050902")
end

function Quest70509:OnSubFinish7050902(arg1)
    print("OnSubFinish7050902")
end

function Quest70509:OnSubFailed7050902(arg1)
    print("OnSubFailed7050902")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70509:OnSubStart7050903(arg1)
    print("OnSubStart7050903")
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710668Data.id, 1, 0)
    self:RequestInteraction(npcs.Npc1045Data.alias)
end

function Quest70509:OnSubFinish7050903(arg1)
    print("OnSubFinish7050903")
    self:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
end

return Quest70509

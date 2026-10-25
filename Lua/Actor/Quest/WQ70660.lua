require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70660 = class("Quest70660", QuestActorProxy)
Quest70660.defaultAlias = "Quest70660"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70660:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70660:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066001"] = self.OnSubStart7066001,
        ["7066005"] = self.OnSubStart7066005,
        ["7066002"] = self.OnSubStart7066002,
        ["7066003"] = self.OnSubStart7066003,
        ["7066004"] = self.OnSubStart7066004
    }
end

function Quest70660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066001"] = self.OnSubFinish7066001,
        ["7066005"] = self.OnSubFinish7066005,
        ["7066002"] = self.OnSubFinish7066002,
        ["7066003"] = self.OnSubFinish7066003,
        ["7066004"] = self.OnSubFinish7066004
    }
end

function Quest70660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7066001"] = self.OnSubFailed7066001}
end

function Quest70660:Start()
    print("Start")
end

function Quest70660:OnDestroy()
    print("OnDestroy")
end

function Quest70660:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
end

function Quest70660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70660:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.NPC1512Data.alias, 3)
end

function Quest70660:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest70660:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest70660:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 7066004)
        print("Finishi Quest 7066004")
    end
end

function Quest70660:OnSubStart7066001(arg1)
    print("OnSubStart7066001")
    self:NpcCreate(arg1, npcs.NPC1512Data.id, 1)
end

function Quest70660:OnSubFinish7066001(arg1)
    print("OnSubFinish7066001")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC1512Data.alias)
end

function Quest70660:OnSubFailed7066001(arg1)
    print("OnSubFailed7066001")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC1512Data.alias)
end

function Quest70660:OnSubStart7066005(arg1)
    print("OnSubStart7066005")
end

function Quest70660:OnSubFinish7066005(arg1)
    print("OnSubFinish7066005")
end

function Quest70660:OnSubStart7066002(arg1)
    print("OnSubStart7066002")
end

function Quest70660:OnSubFinish7066002(arg1)
    print("OnSubFinish7066002")
end

function Quest70660:OnSubStart7066003(arg1)
    print("OnSubStart7066003")
    self:ActionSafeCall(function(arg1)
        arg1.ShowTutorialDialog(arg1, 812, function()
            arg1:FinishQuestID(false, 7066003)
            arg1:RequestInteractionForceAlias("Npc30051")
        end)
    end)
end

function Quest70660:OnSubFinish7066003(arg1)
    print("OnSubFinish7066003")
end

function Quest70660:OnSubStart7066004(arg1)
    print("OnSubStart7066004")
    self:RequestInteractionForceAlias("Npc30051")
end

function Quest70660:OnSubFinish7066004(arg1)
    print("OnSubFinish7066004")
end

return Quest70660

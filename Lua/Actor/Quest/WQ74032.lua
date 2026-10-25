require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74032 = class("Quest74032", QuestActorProxy)
Quest74032.defaultAlias = "Quest74032"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74032:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403201"] = self.OnSubStart7403201,
        ["7403205"] = self.OnSubStart7403205,
        ["7403202"] = self.OnSubStart7403202,
        ["7403203"] = self.OnSubStart7403203,
        ["7403204"] = self.OnSubStart7403204
    }
end

function Quest74032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403201"] = self.OnSubFinish7403201,
        ["7403205"] = self.OnSubFinish7403205,
        ["7403202"] = self.OnSubFinish7403202,
        ["7403203"] = self.OnSubFinish7403203,
        ["7403204"] = self.OnSubFinish7403204
    }
end

function Quest74032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74032:Start()
    print("Start")
end

function Quest74032:OnDestroy()
    print("OnDestroy")
end

function Quest74032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74032:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74032:OnSubStart7403201(arg1)
    print("OnSubStart7403201")
    this:CreateQuestNpc(arg1, npcs.Npc5238Data.id, 0)
    actorMgr:CreateActorWithPos("Q7403201Trigger", "Actor/Gadget/Q7403201Trigger", 70900002, 0, points.TPos_Q7403201Trigger.pos, points.TPos_Q7403201Trigger.rot, true, false, 3)
end

function Quest74032:OnSubFinish7403201(arg1)
    print("OnSubFinish7403201")
end

function Quest74032:OnSubStart7403205(arg1)
    print("OnSubStart7403205")
    actorMgr:GetActor("74032"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 74032)
    actorUtils.FinishQuestID(false, 7403205)
end

function Quest74032:OnSubFinish7403205(arg1)
    print("OnSubFinish7403205")
end

function Quest74032:OnSubStart7403202(arg1)
    print("OnSubStart7403202")
end

function Quest74032:OnSubFinish7403202(arg1)
    print("OnSubFinish7403202")
    self:SetNavigationByMainId(74032, true)
end

function Quest74032:OnSubStart7403203(arg1)
    print("OnSubStart7403203")
    this:CreateQuestNpc(arg1, npcs.Npc5250Data.id, 0)
end

function Quest74032:OnSubFinish7403203(arg1)
    print("OnSubFinish7403203")
end

function Quest74032:OnSubStart7403204(arg1)
    print("OnSubStart7403204")
end

function Quest74032:OnSubFinish7403204(arg1)
    print("OnSubFinish7403204")
    self:SetNavigationByMainId(74025, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5238Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5250Data.alias, 3)
end

return Quest74032

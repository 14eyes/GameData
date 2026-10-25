require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74014 = class("Quest74014", QuestActorProxy)
Quest74014.defaultAlias = "Quest74014"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401401"] = self.OnSubStart7401401,
        ["7401402"] = self.OnSubStart7401402,
        ["7401403"] = self.OnSubStart7401403,
        ["7401405"] = self.OnSubStart7401405,
        ["7401410"] = self.OnSubStart7401410,
        ["7401412"] = self.OnSubStart7401412,
        ["7401413"] = self.OnSubStart7401413,
        ["7401414"] = self.OnSubStart7401414,
        ["7401416"] = self.OnSubStart7401416,
        ["7401417"] = self.OnSubStart7401417,
        ["7401411"] = self.OnSubStart7401411,
        ["7401415"] = self.OnSubStart7401415
    }
end

function Quest74014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401401"] = self.OnSubFinish7401401,
        ["7401402"] = self.OnSubFinish7401402,
        ["7401403"] = self.OnSubFinish7401403,
        ["7401405"] = self.OnSubFinish7401405,
        ["7401410"] = self.OnSubFinish7401410,
        ["7401412"] = self.OnSubFinish7401412,
        ["7401413"] = self.OnSubFinish7401413,
        ["7401414"] = self.OnSubFinish7401414,
        ["7401416"] = self.OnSubFinish7401416,
        ["7401417"] = self.OnSubFinish7401417,
        ["7401411"] = self.OnSubFinish7401411,
        ["7401415"] = self.OnSubFinish7401415
    }
end

function Quest74014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74014:Start()
    print("Start")
end

function Quest74014:OnDestroy()
    print("OnDestroy")
end

function Quest74014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5224Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74014Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q74014Trigger1", 3, false)
end

function Quest74014:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74014:OnSubStart7401401(arg1)
    print("OnSubStart7401401")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5224Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest74014:OnSubFinish7401401(arg1)
    print("OnSubFinish7401401")
    this:SetNavigationByMainId(74014, true)
end

function Quest74014:OnSubStart7401402(arg1)
    print("OnSubStart7401402")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    actorMgr:CreateActorWithPos("Q74014Trigger", "Actor/Gadget/Q74014Trigger", 70900002, 0, points.TPos_Q74014Trigger.pos, points.TPos_Q74014Trigger.rot, true, false, 3)
end

function Quest74014:OnSubFinish7401402(arg1)
    print("OnSubFinish7401402")
    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 74014)
end

function Quest74014:OnSubStart7401403(arg1)
    print("OnSubStart7401403")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401403(arg1)
    print("OnSubFinish7401403")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02, nil, 74014)
end

function Quest74014:OnSubStart7401405(arg1)
    print("OnSubStart7401405")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401405(arg1)
    print("OnSubFinish7401405")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 74014)
end

function Quest74014:OnSubStart7401410(arg1)
    print("OnSubStart7401410")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401410(arg1)
    print("OnSubFinish7401410")
end

function Quest74014:OnSubStart7401412(arg1)
    print("OnSubStart7401412")
end

function Quest74014:OnSubFinish7401412(arg1)
    print("OnSubFinish7401412")
end

function Quest74014:OnSubStart7401413(arg1)
    print("OnSubStart7401413")
end

function Quest74014:OnSubFinish7401413(arg1)
    print("OnSubFinish7401413")
end

function Quest74014:OnSubStart7401414(arg1)
    print("OnSubStart7401414")
end

function Quest74014:OnSubFinish7401414(arg1)
    print("OnSubFinish7401414")
end

function Quest74014:OnSubStart7401416(arg1)
    print("OnSubStart7401416")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401416(arg1)
    print("OnSubFinish7401416")
end

function Quest74014:OnSubStart7401417(arg1)
    print("OnSubStart7401417")
end

function Quest74014:OnSubFinish7401417(arg1)
    print("OnSubFinish7401417")
end

function Quest74014:OnSubStart7401411(arg1)
    print("OnSubStart7401411")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401411(arg1)
    print("OnSubFinish7401411")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

function Quest74014:OnSubStart7401415(arg1)
    print("OnSubStart7401415")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74014:OnSubFinish7401415(arg1)
    print("OnSubFinish7401415")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

return Quest74014

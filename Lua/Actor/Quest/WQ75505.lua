require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75505 = class("Quest75505", QuestActorProxy)
Quest75505.defaultAlias = "Quest75505"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75505:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75505:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7550501"] = self.OnSubStart7550501,
        ["7550502"] = self.OnSubStart7550502,
        ["7550503"] = self.OnSubStart7550503,
        ["7550504"] = self.OnSubStart7550504
    }
end

function Quest75505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7550501"] = self.OnSubFinish7550501,
        ["7550502"] = self.OnSubFinish7550502,
        ["7550503"] = self.OnSubFinish7550503,
        ["7550504"] = self.OnSubFinish7550504
    }
end

function Quest75505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75505:Start()
    print("Start")
end

function Quest75505:OnDestroy()
    print("OnDestroy")
end

function Quest75505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75505:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7550501")
    this:ActorDestroy("Q7550502")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14830.alias, 3)
    this:BanCrowdNpc(3504, 5, nil, false)
    this:RemoveLocalGadget(74007001, "1")
    this:RemoveLocalGadget(74007001, "2")
    this:RemoveLocalGadget(74007001, "3")
end

function Quest75505:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75505:OnSubStart7550501(arg1)
    print("OnSubStart7550501")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 75505):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 75505):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 75505):LookAt({x = -1372, y = 169, z = 7663})
    this:CreateLocalGadget(74007001, "1", {x = -1372.278, y = 169.999, z = 7664.029}, {x = 25.164, y = -63.552, z = 61.78}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(74007001, "2", {x = -1372.863, y = 170.013, z = 7663.462}, {x = -50.977, y = 177.049, z = 63.115}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(74007001, "3", {x = -1372.419, y = 169.967, z = 7663.446}, {x = 23.608, y = 20.465, z = 29.667}, 3, nil, nil, false, 0, true)
    this:BanCrowdNpc(3504, 5, nil, true)
end

function Quest75505:OnSubFinish7550501(arg1)
    print("OnSubFinish7550501")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:RemoveLocalGadget(74007001, "1")
    this:RemoveLocalGadget(74007001, "2")
    this:RemoveLocalGadget(74007001, "3")
end

function Quest75505:OnSubStart7550502(arg1)
    print("OnSubStart7550502")
    actorMgr:CreateActorWithPos("Q7550501", "Actor/Gadget/Q7550501", 70900002, 0, points._Q7550501Point_.pos, points._Q7550501Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc14830.id, 0, false, 0)
    this:BanCrowdNpc(3504, 5, nil, true)
end

function Quest75505:OnSubFinish7550502(arg1)
    print("OnSubFinish7550502")
    this:ActionSafeCall(nil)
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14830.alias, 3)
        this:BanCrowdNpc(3504, 5, nil, false)
    end, function(arg1)
        this:ShowTutorialDialog(1935, nil)
    end, nil, 0, false, true)
end

function Quest75505:OnSubStart7550503(arg1)
    print("OnSubStart7550503")
end

function Quest75505:OnSubFinish7550503(arg1)
    print("OnSubFinish7550503")
end

function Quest75505:OnSubStart7550504(arg1)
    print("OnSubStart7550504")
    actorMgr:CreateActorWithPos("Q7550502", "Actor/Gadget/Q7550502", 70900002, 0, points._Q7550502Point_.pos, points._Q7550502Point_.rot, true, false, nil)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
end

function Quest75505:OnSubFinish7550504(arg1)
    print("OnSubFinish7550504")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
end

return Quest75505

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75048 = class("Quest75048", QuestActorProxy)
Quest75048.defaultAlias = "Quest75048"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75048:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7504801"] = self.OnSubStart7504801,
        ["7504802"] = self.OnSubStart7504802,
        ["7504803"] = self.OnSubStart7504803,
        ["7504864"] = self.OnSubStart7504864,
        ["7504804"] = self.OnSubStart7504804,
        ["7504805"] = self.OnSubStart7504805,
        ["7504863"] = self.OnSubStart7504863,
        ["7504806"] = self.OnSubStart7504806,
        ["7504853"] = self.OnSubStart7504853,
        ["7504817"] = self.OnSubStart7504817,
        ["7504807"] = self.OnSubStart7504807,
        ["7504808"] = self.OnSubStart7504808,
        ["7504818"] = self.OnSubStart7504818,
        ["7504865"] = self.OnSubStart7504865,
        ["7504809"] = self.OnSubStart7504809,
        ["7504810"] = self.OnSubStart7504810,
        ["7504811"] = self.OnSubStart7504811,
        ["7504843"] = self.OnSubStart7504843,
        ["7504812"] = self.OnSubStart7504812,
        ["7504813"] = self.OnSubStart7504813,
        ["7504814"] = self.OnSubStart7504814,
        ["7504815"] = self.OnSubStart7504815,
        ["7504816"] = self.OnSubStart7504816,
        ["7504861"] = self.OnSubStart7504861
    }
end

function Quest75048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7504801"] = self.OnSubFinish7504801,
        ["7504802"] = self.OnSubFinish7504802,
        ["7504803"] = self.OnSubFinish7504803,
        ["7504864"] = self.OnSubFinish7504864,
        ["7504804"] = self.OnSubFinish7504804,
        ["7504805"] = self.OnSubFinish7504805,
        ["7504863"] = self.OnSubFinish7504863,
        ["7504806"] = self.OnSubFinish7504806,
        ["7504853"] = self.OnSubFinish7504853,
        ["7504817"] = self.OnSubFinish7504817,
        ["7504807"] = self.OnSubFinish7504807,
        ["7504808"] = self.OnSubFinish7504808,
        ["7504818"] = self.OnSubFinish7504818,
        ["7504865"] = self.OnSubFinish7504865,
        ["7504809"] = self.OnSubFinish7504809,
        ["7504810"] = self.OnSubFinish7504810,
        ["7504811"] = self.OnSubFinish7504811,
        ["7504843"] = self.OnSubFinish7504843,
        ["7504812"] = self.OnSubFinish7504812,
        ["7504813"] = self.OnSubFinish7504813,
        ["7504814"] = self.OnSubFinish7504814,
        ["7504815"] = self.OnSubFinish7504815,
        ["7504816"] = self.OnSubFinish7504816,
        ["7504861"] = self.OnSubFinish7504861
    }
end

function Quest75048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75048:Start()
    print("Start")
end

function Quest75048:OnDestroy()
    print("OnDestroy")
end

function Quest75048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75048:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75048:OnSubStart7504801(arg1)
    print("OnSubStart7504801")
end

function Quest75048:OnSubFinish7504801(arg1)
    print("OnSubFinish7504801")
end

function Quest75048:OnSubStart7504802(arg1)
    print("OnSubStart7504802")
    this:PlayCutsceneIndex(7504802, function(arg1)
        actorUtils.FinishQuestID(false, 7504802)
    end, nil, nil, false)
end

function Quest75048:OnSubFinish7504802(arg1)
    print("OnSubFinish7504802")
    this:TransmitPlayerWithTextById(arg1, 7504802, nil, 1)
end

function Quest75048:OnSubStart7504803(arg1)
    print("OnSubStart7504803")
    this:CreateQuestNpc(arg1, npcs.Npc21604Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7504803_Trigger", "Actor/Gadget/Q7504803_Trigger", 70900002, 0, {x = -616.861, y = 288.238, z = 9755.595}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75048:OnSubFinish7504803(arg1)
    print("OnSubFinish7504803")
    this:ActorDestroy("Q7504852_Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
    this:SetNavigationByMainId(75048, true)
    this:ActionSafeCall(function(arg1)
        this:TryShowQuestReview("75048")
    end)
end

function Quest75048:OnSubStart7504864(arg1)
    print("OnSubStart7504864")
    actorMgr:CreateActorWithPos("Q7504864_Trigger", "Actor/Gadget/Q7504864_Trigger", 70900002, 0, {x = -384.06, y = 281.068, z = 9878.515}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75048:OnSubFinish7504864(arg1)
    print("OnSubFinish7504864")
end

function Quest75048:OnSubStart7504804(arg1)
    print("OnSubStart7504804")
    actorMgr:CreateActorWithPos("Q7504804_Trigger", "Actor/Gadget/Q7504804_Trigger", 70900002, 0, points.TPos_Q7504804_Trigger.pos, points.TPos_Q7504804_Trigger.rot, true, false, 3)
end

function Quest75048:OnSubFinish7504804(arg1)
    print("OnSubFinish7504804")
end

function Quest75048:OnSubStart7504805(arg1)
    print("OnSubStart7504805")
end

function Quest75048:OnSubFinish7504805(arg1)
    print("OnSubFinish7504805")
    this:QuestNarratorTask(datas.NarratorWithId01, nil)
end

function Quest75048:OnSubStart7504863(arg1)
    print("OnSubStart7504863")
    actorMgr:CreateActorWithPos("Q7504863_Trigger", "Actor/Gadget/Q7504863_Trigger", 70900002, 0, {x = -383.621, y = 281.069, z = 9878.616}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75048:OnSubFinish7504863(arg1)
    print("OnSubFinish7504863")
end

function Quest75048:OnSubStart7504806(arg1)
    print("OnSubStart7504806")
    this:PlayCutsceneIndex(7504806, function(arg1)
        actorUtils.FinishQuestID(false, 7504806)
    end, nil, nil, false)
end

function Quest75048:OnSubFinish7504806(arg1)
    print("OnSubFinish7504806")
end

function Quest75048:OnSubStart7504853(arg1)
    print("OnSubStart7504853")
    this:CreateQuestNpc(arg1, npcs.Npc21604Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21604Data.alias, "", true)
end

function Quest75048:OnSubFinish7504853(arg1)
    print("OnSubFinish7504853")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75048:OnSubStart7504817(arg1)
    print("OnSubStart7504817")
end

function Quest75048:OnSubFinish7504817(arg1)
    print("OnSubFinish7504817")
end

function Quest75048:OnSubStart7504807(arg1)
    print("OnSubStart7504807")
    actorMgr:CreateActorWithPos("Q7504807_Trigger", "Actor/Gadget/Q7504807_Trigger", 70900002, 0, {x = -437.828, y = 240.281, z = 9899.556}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75048:OnSubFinish7504807(arg1)
    print("OnSubFinish7504807")
end

function Quest75048:OnSubStart7504808(arg1)
    print("OnSubStart7504808")
    this:CreateQuestNpc(arg1, npcs.Npc21602Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75048:OnSubFinish7504808(arg1)
    print("OnSubFinish7504808")
    this:SafeDestroyQuestNpc(npcs.Npc21602Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
end

function Quest75048:OnSubStart7504818(arg1)
    print("OnSubStart7504818")
    actorMgr:CreateActorWithPos("Q7504818Trigger", "Actor/Gadget/Q7504818Trigger", 70900002, 0, points._Q7504818TriggerPoint_.pos, points._Q7504818TriggerPoint_.rot, true, false, nil)
end

function Quest75048:OnSubFinish7504818(arg1)
    print("OnSubFinish7504818")
end

function Quest75048:OnSubStart7504865(arg1)
    print("OnSubStart7504865")
end

function Quest75048:OnSubFinish7504865(arg1)
    print("OnSubFinish7504865")
end

function Quest75048:OnSubStart7504809(arg1)
    print("OnSubStart7504809")
end

function Quest75048:OnSubFinish7504809(arg1)
    print("OnSubFinish7504809")
end

function Quest75048:OnSubStart7504810(arg1)
    print("OnSubStart7504810")
    this:CreateQuestNpc(arg1, npcs.Npc21583Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Quest75048:OnSubFinish7504810(arg1)
    print("OnSubFinish7504810")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
end

function Quest75048:OnSubStart7504811(arg1)
    print("OnSubStart7504811")
end

function Quest75048:OnSubFinish7504811(arg1)
    print("OnSubFinish7504811")
end

function Quest75048:OnSubStart7504843(arg1)
    print("OnSubStart7504843")
    this:PlayCutsceneIndex(7504843, function(arg1)
        actorUtils.FinishQuestID(false, 7504843)
    end, nil, nil, false)
end

function Quest75048:OnSubFinish7504843(arg1)
    print("OnSubFinish7504843")
end

function Quest75048:OnSubStart7504812(arg1)
    print("OnSubStart7504812")
    this:CreateQuestNpc(arg1, npcs.Npc21604Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21604Data.alias, "", true)
end

function Quest75048:OnSubFinish7504812(arg1)
    print("OnSubFinish7504812")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75048:OnSubStart7504813(arg1)
    print("OnSubStart7504813")
    actorMgr:CreateActorWithPos("Q7504813_Trigger", "Actor/Gadget/Q7504813_Trigger", 70900002, 0, points.TPos_Q7504813_Trigger.pos, points.TPos_Q7504813_Trigger.rot, true, false, 3)
end

function Quest75048:OnSubFinish7504813(arg1)
    print("OnSubFinish7504813")
end

function Quest75048:OnSubStart7504814(arg1)
    print("OnSubStart7504814")
end

function Quest75048:OnSubFinish7504814(arg1)
    print("OnSubFinish7504814")
end

function Quest75048:OnSubStart7504815(arg1)
    print("OnSubStart7504815")
    this:PlayCutsceneIndex(7504815, function(arg1)
        actorUtils.FinishQuestID(false, 7504815)
    end, nil, nil, false)
end

function Quest75048:OnSubFinish7504815(arg1)
    print("OnSubFinish7504815")
end

function Quest75048:OnSubStart7504816(arg1)
    print("OnSubStart7504816")
    this:CreateQuestNpc(arg1, npcs.Npc21604Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21604Data.alias, "", true)
end

function Quest75048:OnSubFinish7504816(arg1)
    print("OnSubFinish7504816")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75048:OnSubStart7504861(arg1)
    print("OnSubStart7504861")
end

function Quest75048:OnSubFinish7504861(arg1)
    print("OnSubFinish7504861")
end

return Quest75048

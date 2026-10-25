require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72684 = class("Quest72684", QuestActorProxy)
Quest72684.defaultAlias = "Quest72684"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72684:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72684:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7268401"] = self.OnSubStart7268401,
        ["7268402"] = self.OnSubStart7268402,
        ["7268403"] = self.OnSubStart7268403,
        ["7268404"] = self.OnSubStart7268404,
        ["7268405"] = self.OnSubStart7268405,
        ["7268406"] = self.OnSubStart7268406,
        ["7268407"] = self.OnSubStart7268407
    }
end

function Quest72684:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7268401"] = self.OnSubFinish7268401,
        ["7268402"] = self.OnSubFinish7268402,
        ["7268403"] = self.OnSubFinish7268403,
        ["7268404"] = self.OnSubFinish7268404,
        ["7268405"] = self.OnSubFinish7268405,
        ["7268406"] = self.OnSubFinish7268406,
        ["7268407"] = self.OnSubFinish7268407
    }
end

function Quest72684:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7268404"] = self.OnSubFailed7268404, ["7268405"] = self.OnSubFailed7268405}
end

function Quest72684:Start()
    print("Start")
end

function Quest72684:OnDestroy()
    print("OnDestroy")
end

function Quest72684:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72684:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72684:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3150Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20567Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30189Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7268402Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7268404FailTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7268404Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7268406Trigger", 3, false)
end

function Quest72684:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72684:OnSubStart7268401(arg1)
    print("OnSubStart7268401")
end

function Quest72684:OnSubFinish7268401(arg1)
    print("OnSubFinish7268401")
    self:NarratorOnlyTaskByData(datas.NarratorWithId7268401, nil, 72684)
end

function Quest72684:OnSubStart7268402(arg1)
    print("OnSubStart7268402")
    self:CreateQuestNpc(arg1, npcs.Npc20567Data.id, 1)
    actorMgr:CreateActorWithPos("Q7268402Trigger", "Actor/Gadget/Q7268402Trigger", 70900002, 0, {x = -2572.307, y = 217.904, z = -3806.144}, {x = 0.0, y = 357.896, z = 0.0}, true, false, 3)
end

function Quest72684:OnSubFinish7268402(arg1)
    print("OnSubFinish7268402")
end

function Quest72684:OnSubStart7268403(arg1)
    print("OnSubStart7268403")
end

function Quest72684:OnSubFinish7268403(arg1)
    print("OnSubFinish7268403")
end

function Quest72684:OnSubStart7268404(arg1)
    print("OnSubStart7268404")
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3150Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7268404Trigger", "Actor/Gadget/Q7268404Trigger", 70900002, 0, {x = -2971.162, y = 213.591, z = -3995.534}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7268404FailTrigger", "Actor/Gadget/Q7268404FailTrigger", 70900002, 0, {x = -2963.83, y = 212.217, z = -3924.21}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest72684:OnSubFinish7268404(arg1)
    print("OnSubFinish7268404")
    self:SafeDestroyQuestNpc(npcs.Npc20567Data.alias, 3)
end

function Quest72684:OnSubFailed7268404(arg1)
    print("OnSubFailed7268404")
    self:SafeDestroyQuestNpc(npcs.Npc20567Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3150Data.alias, 3)
    self:ActorDestroy("Q7268404Trigger")
end

function Quest72684:OnSubStart7268405(arg1)
    print("OnSubStart7268405")
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7268404FailTrigger", "Actor/Gadget/Q7268404FailTrigger", 70900002, 0, {x = -2963.83, y = 212.217, z = -3924.21}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest72684:OnSubFinish7268405(arg1)
    print("OnSubFinish7268405")
    self:SafeDestroyQuestNpc(npcs.Npc3150Data.alias, 3)
end

function Quest72684:OnSubFailed7268405(arg1)
    print("OnSubFailed7268405")
    self:SafeDestroyQuestNpc(npcs.Npc3150Data.alias, 3)
end

function Quest72684:OnSubStart7268406(arg1)
    print("OnSubStart7268406")
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7268406Trigger", "Actor/Gadget/Q7268406Trigger", 70900002, 0, {x = -2959.412, y = 198.71, z = -3930.744}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest72684:OnSubFinish7268406(arg1)
    print("OnSubFinish7268406")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
end

function Quest72684:OnSubStart7268407(arg1)
    print("OnSubStart7268407")
    self:CreateQuestNpc(arg1, npcs.Npc30188Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc30188Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30190Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc30190Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30189Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc30189Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
end

function Quest72684:OnSubFinish7268407(arg1)
    print("OnSubFinish7268407")
    self:SafeDestroyQuestNpc(npcs.Npc30188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30189Data.alias, 3)
end

return Quest72684

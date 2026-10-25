require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76119 = class("Quest76119", QuestActorProxy)
Quest76119.defaultAlias = "Quest76119"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76119:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611906"] = self.OnSubStart7611906,
        ["7611901"] = self.OnSubStart7611901,
        ["7611905"] = self.OnSubStart7611905,
        ["7611904"] = self.OnSubStart7611904,
        ["7611902"] = self.OnSubStart7611902,
        ["7611903"] = self.OnSubStart7611903
    }
end

function Quest76119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611906"] = self.OnSubFinish7611906,
        ["7611901"] = self.OnSubFinish7611901,
        ["7611905"] = self.OnSubFinish7611905,
        ["7611904"] = self.OnSubFinish7611904,
        ["7611902"] = self.OnSubFinish7611902,
        ["7611903"] = self.OnSubFinish7611903
    }
end

function Quest76119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7611902"] = self.OnSubFailed7611902}
end

function Quest76119:Start()
    print("Start")
end

function Quest76119:OnDestroy()
    print("OnDestroy")
end

function Quest76119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76119:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:RemoveLocalGadget(73112012, "1")
    this:RemoveLocalGadget(73112012, "2")
    this:RemoveLocalGadget(73112012, "3")
    this:ActorDestroy("Q76119guer")
    this:ActorDestroy("Q7611906Trigger")
    this:DestroyNpcTrigger("Q7611901N1318Trigger")
    this:DestroyNpcTrigger("Q7611903N1318Trigger")
    this:CancelStoryByQuest(147611902)
end

function Quest76119:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76119guer")
    this:ActorDestroy("Q7611906Trigger")
end

function Quest76119:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76119:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76119:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76119:OnSubStart7611906(arg1)
    print("OnSubStart7611906")
    actorMgr:CreateActorWithPos("Q7611906Trigger", "Actor/Gadget/Q7611906Trigger", 70900002, 0, points._Q7611906TriggerPoint_.pos, points._Q7611906TriggerPoint_.rot, true, false, 3)
end

function Quest76119:OnSubFinish7611906(arg1)
    print("OnSubFinish7611906")
    this:ActorDestroy("Q7611906Trigger")
    this:SetNavigationByMainId(76119, true)
end

function Quest76119:OnSubStart7611901(arg1)
    print("OnSubStart7611901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 15, 7611901)
    this:CreateLocalGadget(73112012, "1", points.Q7611901_Gadget73112012_1_Point.pos, points.Q7611901_Gadget73112012_1_Point.rot, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73112012, "2", points.Q7611901_Gadget73112012_2_Point.pos, points.Q7611901_Gadget73112012_2_Point.rot, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73112012, "3", points.Q7611901_Gadget73112012_3_Point.pos, points.Q7611901_Gadget73112012_3_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest76119:OnSubFinish7611901(arg1)
    print("OnSubFinish7611901")
    this:RemoveLocalGadget(73112012, "1")
    this:RemoveLocalGadget(73112012, "2")
    this:RemoveLocalGadget(73112012, "3")
end

function Quest76119:OnSubStart7611905(arg1)
    print("OnSubStart7611905")
end

function Quest76119:OnSubFinish7611905(arg1)
    print("OnSubFinish7611905")
end

function Quest76119:OnSubStart7611904(arg1)
    print("OnSubStart7611904")
end

function Quest76119:OnSubFinish7611904(arg1)
    print("OnSubFinish7611904")
end

function Quest76119:OnSubStart7611902(arg1)
    print("OnSubStart7611902")
    this:DeployStoryByQuest(147611902)
end

function Quest76119:OnSubFinish7611902(arg1)
    print("OnSubFinish7611902")
    this:CancelAllStory()
end

function Quest76119:OnSubFailed7611902(arg1)
    print("OnSubFailed7611902")
    this:CancelAllStory()
end

function Quest76119:OnSubStart7611903(arg1)
    print("OnSubStart7611903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7611903, 0, 30, 2, npcs.Npc1318.id)
end

function Quest76119:OnSubFinish7611903(arg1)
    print("OnSubFinish7611903")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76119guer", "Actor/Gadget/Q76119guer", 70900002, 0, points._Q76119guerPoint_.pos, points._Q76119guerPoint_.rot, true, false, 3)
end

return Quest76119

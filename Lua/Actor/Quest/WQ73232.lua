require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73232 = class("Quest73232", QuestActorProxy)
Quest73232.defaultAlias = "Quest73232"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73232:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73232:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323201"] = self.OnSubStart7323201,
        ["7323202"] = self.OnSubStart7323202,
        ["7323203"] = self.OnSubStart7323203,
        ["7323204"] = self.OnSubStart7323204,
        ["7323205"] = self.OnSubStart7323205,
        ["7323206"] = self.OnSubStart7323206,
        ["7323208"] = self.OnSubStart7323208,
        ["7323209"] = self.OnSubStart7323209,
        ["7323210"] = self.OnSubStart7323210,
        ["7323211"] = self.OnSubStart7323211,
        ["7323207"] = self.OnSubStart7323207,
        ["7323220"] = self.OnSubStart7323220,
        ["7323217"] = self.OnSubStart7323217,
        ["7323221"] = self.OnSubStart7323221,
        ["7323219"] = self.OnSubStart7323219,
        ["7323222"] = self.OnSubStart7323222,
        ["7323212"] = self.OnSubStart7323212,
        ["7323224"] = self.OnSubStart7323224,
        ["7323213"] = self.OnSubStart7323213,
        ["7323214"] = self.OnSubStart7323214,
        ["7323223"] = self.OnSubStart7323223,
        ["7323218"] = self.OnSubStart7323218,
        ["7323225"] = self.OnSubStart7323225
    }
end

function Quest73232:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323201"] = self.OnSubFinish7323201,
        ["7323202"] = self.OnSubFinish7323202,
        ["7323203"] = self.OnSubFinish7323203,
        ["7323204"] = self.OnSubFinish7323204,
        ["7323205"] = self.OnSubFinish7323205,
        ["7323206"] = self.OnSubFinish7323206,
        ["7323208"] = self.OnSubFinish7323208,
        ["7323209"] = self.OnSubFinish7323209,
        ["7323210"] = self.OnSubFinish7323210,
        ["7323211"] = self.OnSubFinish7323211,
        ["7323207"] = self.OnSubFinish7323207,
        ["7323220"] = self.OnSubFinish7323220,
        ["7323217"] = self.OnSubFinish7323217,
        ["7323221"] = self.OnSubFinish7323221,
        ["7323219"] = self.OnSubFinish7323219,
        ["7323222"] = self.OnSubFinish7323222,
        ["7323212"] = self.OnSubFinish7323212,
        ["7323224"] = self.OnSubFinish7323224,
        ["7323213"] = self.OnSubFinish7323213,
        ["7323214"] = self.OnSubFinish7323214,
        ["7323223"] = self.OnSubFinish7323223,
        ["7323218"] = self.OnSubFinish7323218,
        ["7323225"] = self.OnSubFinish7323225
    }
end

function Quest73232:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73232:Start()
    print("Start")
end

function Quest73232:OnDestroy()
    print("OnDestroy")
end

function Quest73232:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73232:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73232:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73232:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73232:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73232:OnSubStart7323201(arg1)
    print("OnSubStart7323201")
    actorMgr:CreateActorWithPos("Q7323201Trigger", "Actor/Gadget/Q7323201Trigger", 70900002, 0, points.TPos_Q7323201Trigger.pos, points.TPos_Q7323201Trigger.rot, true, false)
end

function Quest73232:OnSubFinish7323201(arg1)
    print("OnSubFinish7323201")
end

function Quest73232:OnSubStart7323202(arg1)
    print("OnSubStart7323202")
    actorMgr:CreateActorWithPos("Q7323202Trigger", "Actor/Gadget/Q7323202Trigger", 70900002, 0, points.TPos_Q7323202Trigger.pos, points.TPos_Q7323202Trigger.rot, true, false, 3)
end

function Quest73232:OnSubFinish7323202(arg1)
    print("OnSubFinish7323202")
end

function Quest73232:OnSubStart7323203(arg1)
    print("OnSubStart7323203")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
end

function Quest73232:OnSubFinish7323203(arg1)
    print("OnSubFinish7323203")
    this:SafeDestroyQuestNpc(npcs.Npc20883Data.alias, 3)
end

function Quest73232:OnSubStart7323204(arg1)
    print("OnSubStart7323204")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7323204, function(arg1)
            actorUtils.FinishQuestID(false, 7323204)
        end, nil, nil, false)
    end)
end

function Quest73232:OnSubFinish7323204(arg1)
    print("OnSubFinish7323204")
    this:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId2, 2)
    this:LevelLoadFinishSafeCall(function(arg1)
        this:EnterSceneLookCamera({x = 590.8, y = 212.85, z = 5717.392}, 0, 5, true, true)
    end)
end

function Quest73232:OnSubStart7323205(arg1)
    print("OnSubStart7323205")
    this:CreateQuestNpc(arg1, npcs.Npc20883Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323205Trigger", "Actor/Gadget/Q7323205Trigger", 70900002, 0, points.TPos_Q7323205Trigger.pos, points.TPos_Q7323205Trigger.rot, true, false, 3)
end

function Quest73232:OnSubFinish7323205(arg1)
    print("OnSubFinish7323205")
end

function Quest73232:OnSubStart7323206(arg1)
    print("OnSubStart7323206")
    this:RequestInteraction(npcs.Npc20883Data.alias)
end

function Quest73232:OnSubFinish7323206(arg1)
    print("OnSubFinish7323206")
    this:SafeDestroyQuestNpc(npcs.Npc20883Data.alias, 3)
end

function Quest73232:OnSubStart7323208(arg1)
    print("OnSubStart7323208")
end

function Quest73232:OnSubFinish7323208(arg1)
    print("OnSubFinish7323208")
    this:TransmitPlayerById(arg1, 8)
end

function Quest73232:OnSubStart7323209(arg1)
    print("OnSubStart7323209")
end

function Quest73232:OnSubFinish7323209(arg1)
    print("OnSubFinish7323209")
    this:TransmitPlayerById(arg1, 9)
end

function Quest73232:OnSubStart7323210(arg1)
    print("OnSubStart7323210")
end

function Quest73232:OnSubFinish7323210(arg1)
    print("OnSubFinish7323210")
    this:TransmitPlayerById(arg1, 10)
end

function Quest73232:OnSubStart7323211(arg1)
    print("OnSubStart7323211")
end

function Quest73232:OnSubFinish7323211(arg1)
    print("OnSubFinish7323211")
end

function Quest73232:OnSubStart7323207(arg1)
    print("OnSubStart7323207")
end

function Quest73232:OnSubFinish7323207(arg1)
    print("OnSubFinish7323207")
    globalActor:PlayerEnterDungeon(785, 2188, true, datas.TextmapId2, 0)
end

function Quest73232:OnSubStart7323220(arg1)
    print("OnSubStart7323220")
end

function Quest73232:OnSubFinish7323220(arg1)
    print("OnSubFinish7323220")
end

function Quest73232:OnSubStart7323217(arg1)
    print("OnSubStart7323217")
end

function Quest73232:OnSubFinish7323217(arg1)
    print("OnSubFinish7323217")
    globalActor:PlayerEnterDungeon(786, 2189, true, datas.TextmapId2, 0)
end

function Quest73232:OnSubStart7323221(arg1)
    print("OnSubStart7323221")
end

function Quest73232:OnSubFinish7323221(arg1)
    print("OnSubFinish7323221")
end

function Quest73232:OnSubStart7323219(arg1)
    print("OnSubStart7323219")
end

function Quest73232:OnSubFinish7323219(arg1)
    print("OnSubFinish7323219")
    globalActor:PlayerEnterDungeon(787, 2190, true, datas.TextmapId2, 0)
end

function Quest73232:OnSubStart7323222(arg1)
    print("OnSubStart7323222")
end

function Quest73232:OnSubFinish7323222(arg1)
    print("OnSubFinish7323222")
end

function Quest73232:OnSubStart7323212(arg1)
    print("OnSubStart7323212")
    actorMgr:CreateActorWithPos("Q7323212Trigger", "Actor/Gadget/Q7323212Trigger", 70900002, 0, points.TPos_Q7323212Trigger.pos, points.TPos_Q7323212Trigger.rot, true, false, 3)
end

function Quest73232:OnSubFinish7323212(arg1)
    print("OnSubFinish7323212")
end

function Quest73232:OnSubStart7323224(arg1)
    print("OnSubStart7323224")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
end

function Quest73232:OnSubFinish7323224(arg1)
    print("OnSubFinish7323224")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73232:OnSubStart7323213(arg1)
    print("OnSubStart7323213")
end

function Quest73232:OnSubFinish7323213(arg1)
    print("OnSubFinish7323213")
end

function Quest73232:OnSubStart7323214(arg1)
    print("OnSubStart7323214")
    this:PlayCutsceneIndex(7323214, function(arg1)
        actorUtils.FinishQuestID(false, 7323214)
    end, nil, nil, false)
end

function Quest73232:OnSubFinish7323214(arg1)
    print("OnSubFinish7323214")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
end

function Quest73232:OnSubStart7323223(arg1)
    print("OnSubStart7323223")
end

function Quest73232:OnSubFinish7323223(arg1)
    print("OnSubFinish7323223")
end

function Quest73232:OnSubStart7323218(arg1)
    print("OnSubStart7323218")
    this:CreateQuestNpcWithTrigger("Q7323218Trigger", 7323218, 20883, 1, 10)
end

function Quest73232:OnSubFinish7323218(arg1)
    print("OnSubFinish7323218")
    this:SafeDestroyQuestNpc(npcs.Npc20883Data.alias, 3)
end

function Quest73232:OnSubStart7323225(arg1)
    print("OnSubStart7323225")
end

function Quest73232:OnSubFinish7323225(arg1)
    print("OnSubFinish7323225")
end

return Quest73232

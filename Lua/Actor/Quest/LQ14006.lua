require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14006 = class("Quest14006", QuestActorProxy)
Quest14006.defaultAlias = "Quest14006"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14006:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400601"] = self.OnSubStart1400601,
        ["1400629"] = self.OnSubStart1400629,
        ["1400630"] = self.OnSubStart1400630,
        ["1400602"] = self.OnSubStart1400602,
        ["1400603"] = self.OnSubStart1400603,
        ["1400604"] = self.OnSubStart1400604,
        ["1400605"] = self.OnSubStart1400605,
        ["1400606"] = self.OnSubStart1400606,
        ["1400628"] = self.OnSubStart1400628,
        ["1400631"] = self.OnSubStart1400631,
        ["1400607"] = self.OnSubStart1400607,
        ["1400608"] = self.OnSubStart1400608,
        ["1400609"] = self.OnSubStart1400609,
        ["1400610"] = self.OnSubStart1400610,
        ["1400611"] = self.OnSubStart1400611,
        ["1400612"] = self.OnSubStart1400612,
        ["1400613"] = self.OnSubStart1400613,
        ["1400621"] = self.OnSubStart1400621,
        ["1400623"] = self.OnSubStart1400623,
        ["1400622"] = self.OnSubStart1400622,
        ["1400624"] = self.OnSubStart1400624,
        ["1400625"] = self.OnSubStart1400625,
        ["1400626"] = self.OnSubStart1400626,
        ["1400627"] = self.OnSubStart1400627,
        ["1400614"] = self.OnSubStart1400614,
        ["1400615"] = self.OnSubStart1400615,
        ["1400616"] = self.OnSubStart1400616,
        ["1400617"] = self.OnSubStart1400617,
        ["1400618"] = self.OnSubStart1400618,
        ["1400619"] = self.OnSubStart1400619,
        ["1400620"] = self.OnSubStart1400620
    }
end

function Quest14006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400601"] = self.OnSubFinish1400601,
        ["1400629"] = self.OnSubFinish1400629,
        ["1400630"] = self.OnSubFinish1400630,
        ["1400602"] = self.OnSubFinish1400602,
        ["1400603"] = self.OnSubFinish1400603,
        ["1400604"] = self.OnSubFinish1400604,
        ["1400605"] = self.OnSubFinish1400605,
        ["1400606"] = self.OnSubFinish1400606,
        ["1400628"] = self.OnSubFinish1400628,
        ["1400631"] = self.OnSubFinish1400631,
        ["1400607"] = self.OnSubFinish1400607,
        ["1400608"] = self.OnSubFinish1400608,
        ["1400609"] = self.OnSubFinish1400609,
        ["1400610"] = self.OnSubFinish1400610,
        ["1400611"] = self.OnSubFinish1400611,
        ["1400612"] = self.OnSubFinish1400612,
        ["1400613"] = self.OnSubFinish1400613,
        ["1400621"] = self.OnSubFinish1400621,
        ["1400623"] = self.OnSubFinish1400623,
        ["1400622"] = self.OnSubFinish1400622,
        ["1400624"] = self.OnSubFinish1400624,
        ["1400625"] = self.OnSubFinish1400625,
        ["1400626"] = self.OnSubFinish1400626,
        ["1400627"] = self.OnSubFinish1400627,
        ["1400614"] = self.OnSubFinish1400614,
        ["1400615"] = self.OnSubFinish1400615,
        ["1400616"] = self.OnSubFinish1400616,
        ["1400617"] = self.OnSubFinish1400617,
        ["1400618"] = self.OnSubFinish1400618,
        ["1400619"] = self.OnSubFinish1400619,
        ["1400620"] = self.OnSubFinish1400620
    }
end

function Quest14006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1400608"] = self.OnSubFailed1400608,
        ["1400609"] = self.OnSubFailed1400609,
        ["1400610"] = self.OnSubFailed1400610
    }
end

function Quest14006:Start()
    print("Start")
end

function Quest14006:OnDestroy()
    print("OnDestroy")
end

function Quest14006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:CancelStoryByQuest(121400608)
    this:CancelStoryByQuest(121400602)
    this:CancelStoryByQuest(121400627)
    this:CancelStoryByQuest(121400622)
    globalActor:ResumePaimonInProfilePage({3})
    this:FuncDestroyStory1400608NPC()
    this:FuncDestroyStory1400627NPC()
    this:FuncDestroyStory1400622NPC()
end

function Quest14006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14006:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest14006:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14006:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14006:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest14006:FuncHideWQNpc()
    print("FuncHideWQNpc")
    local actor
    if this:GetSubQuestState(7403201) ~= 2 then
        if this:GetSubQuestState(7403205) ~= 2 then
            if this:GetSubQuestState(7403202) ~= 2 then
                goto lbl_40
            end
        end
    end

    actor = actorMgr:GetActor("74032")
    if actor ~= actorMgr.dummyActor then
        actor:SafeDestroyQuestNpc("Npc5238", 3)
        this:NotifyTo("Npc5238", 1, true)
    end

    ::lbl_40::
    if this:GetSubQuestState(7406501) == 2 then
        local dummyActor = actorMgr:GetActor("74065")
        if dummyActor ~= actorMgr.dummyActor then
            dummyActor:SafeDestroyQuestNpc("Npc21095", 3)
        end
    end
end

function Quest14006:FuncRecoveWQNpc()
    print("FuncRecoveWQNpc")
    if this:GetSubQuestState(7403201) ~= 2 then
        if this:GetSubQuestState(7403205) ~= 2 then
            if this:GetSubQuestState(7403202) ~= 2 then
                goto lbl_34
            end
        end
    end

    actorMgr:GetActor("74032"):CreateQuestNpcById(7403201, 5238, 0)
    print("FuncRecoveWQNpc-create5238")
    ::lbl_34::
    if this:GetSubQuestState(7406501) == 2 then
        actorMgr:GetActor("74065"):CreateQuestNpcById(7406501, 21095, 0)
        print("FuncRecoveWQNpc-create21095")
    end
end

function Quest14006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 140061001 then
        this:SetQuestVarByMainId(1, 1)
        actorUtils.FinishQuestID(false, 1400609)
    end
end

function Quest14006:FuncDestroyStory1400608NPC()
    print("FuncDestroyStory1400608NPC")
    this:SafeDestroyQuestNpc(npcs.Npc13486Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13631Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13484Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13485Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13483Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13629Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13523Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13628Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13630Data.alias, 3)
    this:RemoveLocalGadget(70711232, "1400608")
end

function Quest14006:FuncDestroyStory1400622NPC()
    print("FuncDestroyStory1400622NPC")
    this:SafeDestroyQuestNpc(npcs.Npc13629Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13628Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13523Data.alias, 20195)
end

function Quest14006:FuncDestroyStory1400627NPC()
    print("FuncDestroyStory1400627NPC")
    this:SafeDestroyQuestNpc(npcs.Npc13628Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13523Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13588Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13805Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13629Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13807Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13630Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13806Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13804Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13631Data.alias, 20195)
end

function Quest14006:OnSubStart1400601(arg1)
    print("OnSubStart1400601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400601, 0, 13, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13483Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13628Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13629Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13630Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13631Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13689Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13690Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13691Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13619Data.id, 0)
    this:CreateNpcAttachLocalGadget(13689, 14006, 70711234, "13689", "BillboardAttach", {x = 0.016, y = 0.013, z = 0.001}, {x = -102.811, y = 91.796, z = -3.074}, nil, nil, false)
    this:CreateNpcAttachLocalGadget(13690, 14006, 70711234, "13690", "BillboardAttach", {x = 0.032, y = 0.024, z = 0.003}, {x = -102.811, y = 91.796, z = -3.074}, nil, nil, false)
    this:CreateNpcAttachLocalGadget(13691, 14006, 70711234, "13691", "BillboardAttach", {x = -0.009, y = 0.025, z = 0.01}, {x = -102.811, y = 91.796, z = -3.074}, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc13483Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13628Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13629Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13630Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13631Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13689Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13690Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13691Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13619Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400601(arg1)
    print("OnSubFinish1400601")
    this:RemoveLocalGadget(70711234, "13689")
    this:RemoveLocalGadget(70711234, "13690")
    this:RemoveLocalGadget(70711234, "13691")
    this:SafeDestroyQuestNpc(npcs.Npc13483Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13628Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13629Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13630Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13631Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13689Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13690Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13691Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13619Data.alias, 3)
end

function Quest14006:OnSubStart1400629(arg1)
    print("OnSubStart1400629")
end

function Quest14006:OnSubFinish1400629(arg1)
    print("OnSubFinish1400629")
end

function Quest14006:OnSubStart1400630(arg1)
    print("OnSubStart1400630")
end

function Quest14006:OnSubFinish1400630(arg1)
    print("OnSubFinish1400630")
end

function Quest14006:OnSubStart1400602(arg1)
    print("OnSubStart1400602")
end

function Quest14006:OnSubFinish1400602(arg1)
    print("OnSubFinish1400602")
end

function Quest14006:OnSubStart1400603(arg1)
    print("OnSubStart1400603")
end

function Quest14006:OnSubFinish1400603(arg1)
    print("OnSubFinish1400603")
    this:ActorDestroy("Q1400605Trigger")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest14006:OnSubStart1400604(arg1)
    print("OnSubStart1400604")
end

function Quest14006:OnSubFinish1400604(arg1)
    print("OnSubFinish1400604")
end

function Quest14006:OnSubStart1400605(arg1)
    print("OnSubStart1400605")
    this:CreateQuestNpc(arg1, npcs.Npc13605Data.id, 0)
    this:DeployStoryByQuest(121400602)
    if this:CheckSubQuestState(1400602, 2, false) then
        this:CreateLocalGadget(707111158, "1400602", {x = 4505.44, y = 123.691, z = 4635.276}, {x = 0.0, y = 305.481, z = 0.0}, 3, nil, nil, false)
    else
        this:CreateLocalGadget(707111158, "1400602", {x = 4506.108, y = 123.767, z = 4636.28}, {x = 359.964, y = 350.659, z = 359.783}, 3, nil, nil, false)
    end

    if this:CheckSubQuestState(1400603, 2, false) then
        actorMgr:CreateActorWithPos("Q1400605Trigger", "Actor/Gadget/Q1400605Trigger", 70900002, 0, {x = 4499.326, y = 121.696, z = 4630.111}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end
end

function Quest14006:OnSubFinish1400605(arg1)
    print("OnSubFinish1400605")
    this:ActorDestroy("Q1400605Trigger")
    globalActor:ResumePaimonInProfilePage({3})
    this:CancelStoryByQuest(121400602)
    this:SafeDestroyQuestNpc(npcs.Npc13605Data.alias, 3)
end

function Quest14006:OnSubStart1400606(arg1)
    print("OnSubStart1400606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13483Data.id, 1400606, 0, 20, 1)
    this:CreateLocalGadget(707111158, "1400602", {x = 4505.781, y = 123.691, z = 4636.291}, {x = 0.0, y = 340.432, z = 0.0}, 3, nil, nil, false)
    this:CancelStoryByQuest(121400602)
end

function Quest14006:OnSubFinish1400606(arg1)
    print("OnSubFinish1400606")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13483Data.alias, 3)
end

function Quest14006:OnSubStart1400628(arg1)
    print("OnSubStart1400628")
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1400628Trigger", "Actor/Gadget/Q1400628Trigger", 70900002, 0, {x = 4445.604, y = 34.146, z = 4627.413}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(707111158, "1400602", {x = 4505.781, y = 123.691, z = 4636.291}, {x = 0.0, y = 340.432, z = 0.0}, 3, nil, nil, false)
end

function Quest14006:OnSubFinish1400628(arg1)
    print("OnSubFinish1400628")
    this:RemoveLocalGadget(707111158, "1400602")
end

function Quest14006:OnSubStart1400631(arg1)
    print("OnSubStart1400631")
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1400631Trigger", "Actor/Gadget/Q1400631Trigger", 70900002, 0, {x = 4445.604, y = 34.405, z = 4627.413}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:FuncHideWQNpc()
end

function Quest14006:OnSubFinish1400631(arg1)
    print("OnSubFinish1400631")
end

function Quest14006:OnSubStart1400607(arg1)
    print("OnSubStart1400607")
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1400607Trigger", "Actor/Gadget/Q1400607Trigger", 70900002, 0, {x = 4445.604, y = 34.179, z = 4627.413}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1078Data.id, 1400607, 0, 20, 1, true)
end

function Quest14006:OnSubFinish1400607(arg1)
    print("OnSubFinish1400607")
end

function Quest14006:OnSubStart1400608(arg1)
    print("OnSubStart1400608")
    this:CreateQuestNpc(arg1, npcs.Npc13628Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    this:QuestLimitRegionTask(1400608, 3, nil, {x = 4443.567, y = 25.687, z = 4631.979}, {x = 0.0, y = 0.0, z = 0.0}, 1, 68, 84, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "1400608LimitedRegion", nil, nil, function(arg1)
        actorUtils.FinishQuestID(true, 1400608)
    end)

    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121400608)
    end)
end

function Quest14006:OnSubFinish1400608(arg1)
    print("OnSubFinish1400608")
end

function Quest14006:OnSubFailed1400608(arg1)
    print("OnSubFailed1400608")
    this:ClearQuestLimitRegionTask()
    this:CancelStoryByQuest(121400608)
    this:FuncDestroyStory1400608NPC()
end

function Quest14006:OnSubStart1400609(arg1)
    print("OnSubStart1400609")
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
end

function Quest14006:OnSubFinish1400609(arg1)
    print("OnSubFinish1400609")
    this:CancelStoryByQuest(121400608)
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 0)
end

function Quest14006:OnSubFailed1400609(arg1)
    print("OnSubFailed1400609")
    this:ClearQuestLimitRegionTask()
    this:CancelStoryByQuest(121400608)
    this:FuncDestroyStory1400608NPC()
end

function Quest14006:OnSubStart1400610(arg1)
    print("OnSubStart1400610")
    if this:GetQuestVar(1400610, 1) == 1 then
        if this:GetQuestNpcActor(npcs.Npc13485Data.alias) ~= actorMgr.dummyActor then
            print("skip\226\128\148\226\128\148CreateQuestNpc1348514006")
        end
    else
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13485Data.id, 1400610, 0, 40, 1)
        print("CreateQuestNpc1348514006")
    end

    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    this:QuestLimitRegionTask(1400608, 3, nil, {x = 4443.567, y = 25.687, z = 4631.979}, {x = 0.0, y = 0.0, z = 0.0}, 1, 68, 84, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "1400608LimitedRegion", nil, nil, function(arg1)
        actorUtils.FinishQuestID(true, 1400610)
    end)

    this:CancelStoryByQuest(121400608)
end

function Quest14006:OnSubFinish1400610(arg1)
    print("OnSubFinish1400610")
    this:LightNotifyTo(npcs.Npc5218Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13483Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13484Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13485Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13486Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13523Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13628Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13629Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13630Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13631Data.alias, 3)
    this:FuncRecoveWQNpc()
    this:ClearQuestLimitRegionTask()
end

function Quest14006:OnSubFailed1400610(arg1)
    print("OnSubFailed1400610")
    this:ClearQuestLimitRegionTask()
    this:DestroyNpcTrigger("Q1400610N13485Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc13485Data.alias, 3)
    this:SetQuestVarByMainId(2, 0)
    this:SetQuestVarByMainId(1, 0)
end

function Quest14006:OnSubStart1400611(arg1)
    print("OnSubStart1400611")
    this:CancelStoryByQuest(121400627)
    this:CancelStoryByQuest(121400622)
    this:FuncDestroyStory1400627NPC()
    this:FuncDestroyStory1400622NPC()
end

function Quest14006:OnSubFinish1400611(arg1)
    print("OnSubFinish1400611")
end

function Quest14006:OnSubStart1400612(arg1)
    print("OnSubStart1400612")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400612, 0, 15, 1)
end

function Quest14006:OnSubFinish1400612(arg1)
    print("OnSubFinish1400612")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
end

function Quest14006:OnSubStart1400613(arg1)
    print("OnSubStart1400613")
    this:CreateQuestNpc(arg1, npcs.Npc13633Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13633Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400613(arg1)
    print("OnSubFinish1400613")
end

function Quest14006:OnSubStart1400621(arg1)
    print("OnSubStart1400621")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1078Data.id, 1400621, 0, 25, 1)
    this:GetQuestNpcActor(npcs.Npc13633Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400621(arg1)
    print("OnSubFinish1400621")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13633Data.alias, 20195)
end

function Quest14006:OnSubStart1400623(arg1)
    print("OnSubStart1400623")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400623, 0, 22, 1)
end

function Quest14006:OnSubFinish1400623(arg1)
    print("OnSubFinish1400623")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
end

function Quest14006:OnSubStart1400622(arg1)
    print("OnSubStart1400622")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121400622)
    end)
end

function Quest14006:OnSubFinish1400622(arg1)
    print("OnSubFinish1400622")
end

function Quest14006:OnSubStart1400624(arg1)
    print("OnSubStart1400624")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400624, 0, 15, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13588Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13804Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13805Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13806Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13807Data.id, 0)
    this:CreateLocalGadget(70291607, "1001", {x = 791.41, y = 25.668, z = 401.558}, {x = 0.0, y = 90.0, z = 0.0}, 20195, nil, nil, false)
    this:SetLocalGadgetState(70291607, "1001", 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13588Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13804Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13805Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13806Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13807Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400624(arg1)
    print("OnSubFinish1400624")
    this:RemoveLocalGadget(70291607, "1001")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
end

function Quest14006:OnSubStart1400625(arg1)
    print("OnSubStart1400625")
    this:CreateQuestNpc(arg1, npcs.Npc13605Data.id, 0)
    this:CancelStoryByQuest(121400622)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13588Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:FuncDestroyStory1400622NPC()
    questNpcActor:DoFreeStyle(4190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13804Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13805Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13806Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13807Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400625(arg1)
    print("OnSubFinish1400625")
end

function Quest14006:OnSubStart1400626(arg1)
    print("OnSubStart1400626")
    this:GetQuestNpcActor(npcs.Npc13804Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1078, 1400626, 0, 30, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13588Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13805Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13806Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13807Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400626(arg1)
    print("OnSubFinish1400626")
    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
end

function Quest14006:OnSubStart1400627(arg1)
    print("OnSubStart1400627")
    this:CreateQuestNpc(arg1, npcs.Npc13523Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13588Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121400627)
    end)

    this:GetQuestNpcActor(npcs.Npc13523Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13523Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14006:OnSubFinish1400627(arg1)
    print("OnSubFinish1400627")
end

function Quest14006:OnSubStart1400614(arg1)
    print("OnSubStart1400614")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400614, 0, 24, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13479Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13618Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13478Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13525Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13526Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13633Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13623Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13480Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13481Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13482Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13619Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13620Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13621Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13622Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13624Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13632Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13634Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13635Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13636Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13637Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21205Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13465Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13818Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13819Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121400627)
    end)

    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13523Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14006:OnSubFinish1400614(arg1)
    print("OnSubFinish1400614")
    this:CancelStoryByQuest(121400627)
    this:FuncDestroyStory1400627NPC()
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13523Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13525Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13526Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13588Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13605Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13633Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13623Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13480Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13481Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13482Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13619Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13620Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13621Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13622Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13624Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13632Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13634Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13635Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13636Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13637Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc21205Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13465Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13818Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13819Data.alias, 20195)
    this:GetQuestNpcActor(npcs.Npc13523Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13588Data.alias):DisableInteeHeadCtrl(false)
end

function Quest14006:OnSubStart1400615(arg1)
    print("OnSubStart1400615")
    this:CreateQuestNpc(arg1, npcs.Npc13479Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13618Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13478Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13618Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest14006:OnSubFinish1400615(arg1)
    print("OnSubFinish1400615")
end

function Quest14006:OnSubStart1400616(arg1)
    print("OnSubStart1400616")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400616, 0, 40, 1)
end

function Quest14006:OnSubFinish1400616(arg1)
    print("OnSubFinish1400616")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13479Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13618Data.alias, 20195)
    this:SafeDestroyQuestNpc(npcs.Npc13478Data.alias, 20195)
end

function Quest14006:OnSubStart1400617(arg1)
    print("OnSubStart1400617")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 5, nil, nil)
    actorMgr:CreateActorWithPos("Q1400617Trigger", "Actor/Gadget/Q1400617Trigger", 70900002, 0, points.TPos_Q1400617Trigger.pos, points.TPos_Q1400617Trigger.rot, true, false, 1086)
end

function Quest14006:OnSubFinish1400617(arg1)
    print("OnSubFinish1400617")
end

function Quest14006:OnSubStart1400618(arg1)
    print("OnSubStart1400618")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1078Data.id, 1400618, 0, 20, 1, true)
end

function Quest14006:OnSubFinish1400618(arg1)
    print("OnSubFinish1400618")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
end

function Quest14006:OnSubStart1400619(arg1)
    print("OnSubStart1400619")
end

function Quest14006:OnSubFinish1400619(arg1)
    print("OnSubFinish1400619")
end

function Quest14006:OnSubStart1400620(arg1)
    print("OnSubStart1400620")
    this:NpcCreateWithNpcTrigger(1078, 1400620, 1, 8)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, true)
end

function Quest14006:OnSubFinish1400620(arg1)
    print("OnSubFinish1400620")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
end

return Quest14006

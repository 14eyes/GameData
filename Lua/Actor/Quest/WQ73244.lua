require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73244 = class("Quest73244", QuestActorProxy)
Quest73244.defaultAlias = "Quest73244"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73244:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73244:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324423"] = self.OnSubStart7324423,
        ["7324401"] = self.OnSubStart7324401,
        ["7324402"] = self.OnSubStart7324402,
        ["7324419"] = self.OnSubStart7324419,
        ["7324420"] = self.OnSubStart7324420,
        ["7324403"] = self.OnSubStart7324403,
        ["7324410"] = self.OnSubStart7324410,
        ["7324414"] = self.OnSubStart7324414,
        ["7324406"] = self.OnSubStart7324406,
        ["7324417"] = self.OnSubStart7324417,
        ["7324418"] = self.OnSubStart7324418,
        ["7324411"] = self.OnSubStart7324411,
        ["7324412"] = self.OnSubStart7324412,
        ["7324413"] = self.OnSubStart7324413,
        ["7324422"] = self.OnSubStart7324422,
        ["7324407"] = self.OnSubStart7324407,
        ["7324421"] = self.OnSubStart7324421,
        ["7324408"] = self.OnSubStart7324408,
        ["7324415"] = self.OnSubStart7324415,
        ["7324404"] = self.OnSubStart7324404,
        ["7324416"] = self.OnSubStart7324416
    }
end

function Quest73244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324423"] = self.OnSubFinish7324423,
        ["7324401"] = self.OnSubFinish7324401,
        ["7324402"] = self.OnSubFinish7324402,
        ["7324419"] = self.OnSubFinish7324419,
        ["7324420"] = self.OnSubFinish7324420,
        ["7324403"] = self.OnSubFinish7324403,
        ["7324410"] = self.OnSubFinish7324410,
        ["7324414"] = self.OnSubFinish7324414,
        ["7324406"] = self.OnSubFinish7324406,
        ["7324417"] = self.OnSubFinish7324417,
        ["7324418"] = self.OnSubFinish7324418,
        ["7324411"] = self.OnSubFinish7324411,
        ["7324412"] = self.OnSubFinish7324412,
        ["7324413"] = self.OnSubFinish7324413,
        ["7324422"] = self.OnSubFinish7324422,
        ["7324407"] = self.OnSubFinish7324407,
        ["7324421"] = self.OnSubFinish7324421,
        ["7324408"] = self.OnSubFinish7324408,
        ["7324415"] = self.OnSubFinish7324415,
        ["7324404"] = self.OnSubFinish7324404,
        ["7324416"] = self.OnSubFinish7324416
    }
end

function Quest73244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73244:Start()
    print("Start")
end

function Quest73244:OnDestroy()
    print("OnDestroy")
end

function Quest73244:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73244:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73244:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4395Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20928Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7324402_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324410_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324410NewTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324420_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324421_Trigger", 3, false)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4395Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20928Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7324402_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324410_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324410NewTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324418Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7324420_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7324421_Trigger", 0, false)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(nil, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20928Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7324402_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324404_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7324410_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324410NewTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7324418Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7324420_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7324421_Trigger", 0, false)
end

function Quest73244:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73244:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73244:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7324414
    v[1] = "Q7324416_guide"
    v[2] = n
    tbl[1] = v
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(3, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. "SitPos[x=" .. pos.x .. ",z=" .. pos.z .. "]  PlayerPos[x=" .. avatarPos.x .. ",z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 10 then
            if math.abs(pos.z - avatarPos.z) < 50 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 3 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, tbl[i][2])
                        Quest73244:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("beforce standing")
    Quest73244:RegisterStandingEvent()
end

function Quest73244:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest73244:CallOnAvatarStand(Quest73244.RegisterSittingEvent)
end

function Quest73244:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest73244:CallOnAvatarSit(Quest73244.CheckSitPoint)
end

function Quest73244:FinishQuestID7324414()
    print("FinishQuestID7324414")
    actorUtils.FinishQuestID(false, 7324414)
end

function Quest73244:OnSubStart7324423(arg1)
    print("OnSubStart7324423")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 1)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324423(arg1)
    print("OnSubFinish7324423")
end

function Quest73244:OnSubStart7324401(arg1)
    print("OnSubStart7324401")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4296Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 2)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    this:GetQuestNpcActor(npcs.Npc4296Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest73244:OnSubFinish7324401(arg1)
    print("OnSubFinish7324401")
    this:ShowBlackScreenWithDialogText(1, 1, 1, nil, nil, nil, 0, false, true)
end

function Quest73244:OnSubStart7324402(arg1)
    print("OnSubStart7324402")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4296Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 2)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    actorMgr:CreateActorWithPos("Q7324402_EnterTrigger", "Actor/Gadget/Q7324402_EnterTrigger", 70900002, 0, {x = -1542.536, y = 49.49, z = 5013.376}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73244:OnSubFinish7324402(arg1)
    print("OnSubFinish7324402")
end

function Quest73244:OnSubStart7324419(arg1)
    print("OnSubStart7324419")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 1)
    this:RequestInteraction(npcs.Npc4296Data.alias)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324419(arg1)
    print("OnSubFinish7324419")
    this:ShowBlackScreen(1, 3, 1, nil, nil, nil, "", false, false)
end

function Quest73244:OnSubStart7324420(arg1)
    print("OnSubStart7324420")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 1)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324420(arg1)
    print("OnSubFinish7324420")
end

function Quest73244:OnSubStart7324403(arg1)
    print("OnSubStart7324403")
    this:RequestInteraction(npcs.Npc4296Data.alias)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324403(arg1)
    print("OnSubFinish7324403")
    this:ShowBlackScreenWithDialogText(1, 1, 1, nil, nil, nil, 0, false, true)
end

function Quest73244:OnSubStart7324410(arg1)
    print("OnSubStart7324410")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4296Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4395Data.id, 2)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    actorMgr:CreateActorWithPos("Q7324410NewTrigger", "Actor/Gadget/Q7324410NewTrigger", 70900002, 0, {x = -406.845, y = 212.108, z = 4227.067}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73244:OnSubFinish7324410(arg1)
    print("OnSubFinish7324410")
end

function Quest73244:OnSubStart7324414(arg1)
    print("OnSubStart7324414")
    this:RegisterSittingEvent()
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324414(arg1)
    print("OnSubFinish7324414")
    this:ShowBlackScreenWithDialogText(1, 3, 1, nil, function(arg1)
        globalActor:ChangeDay24Time(24, true)
        this:CallDelay(0.5, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end, nil, 0, false, false)
end

function Quest73244:OnSubStart7324406(arg1)
    print("OnSubStart7324406")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324406(arg1)
    print("OnSubFinish7324406")
end

function Quest73244:OnSubStart7324417(arg1)
    print("OnSubStart7324417")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20928Data.id, 2)
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    this:RequestInteraction(npcs.Npc20928Data.alias)
end

function Quest73244:OnSubFinish7324417(arg1)
    print("OnSubFinish7324417")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20928Data.alias)
end

function Quest73244:OnSubStart7324418(arg1)
    print("OnSubStart7324418")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    actorMgr:CreateActorWithPos("Q7324418Trigger", "Actor/Gadget/Q7324418Trigger", 70900002, 0, {x = -121.548, y = 252.223, z = 4338.555}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73244:OnSubFinish7324418(arg1)
    print("OnSubFinish7324418")
    this:EnterSceneLookCamera({x = -117.15, y = 259.97, z = 4329.34}, 0.5, 2, false, false)
    this:NarratorOnlyTaskByData(datas.R1)
end

function Quest73244:OnSubStart7324411(arg1)
    print("OnSubStart7324411")
end

function Quest73244:OnSubFinish7324411(arg1)
    print("OnSubFinish7324411")
end

function Quest73244:OnSubStart7324412(arg1)
    print("OnSubStart7324412")
end

function Quest73244:OnSubFinish7324412(arg1)
    print("OnSubFinish7324412")
end

function Quest73244:OnSubStart7324413(arg1)
    print("OnSubStart7324413")
end

function Quest73244:OnSubFinish7324413(arg1)
    print("OnSubFinish7324413")
end

function Quest73244:OnSubStart7324422(arg1)
    print("OnSubStart7324422")
end

function Quest73244:OnSubFinish7324422(arg1)
    print("OnSubFinish7324422")
end

function Quest73244:OnSubStart7324407(arg1)
    print("OnSubStart7324407")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324407(arg1)
    print("OnSubFinish7324407")
    this:NarratorOnlyTaskByData(datas.Q7324408)
end

function Quest73244:OnSubStart7324421(arg1)
    print("OnSubStart7324421")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)

    actorMgr:CreateActorWithPos("Q7324421_Trigger", "Actor/Gadget/Q7324421_Trigger", 70900002, 0, {x = -1536.132, y = 25.159, z = 5153.387}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73244:OnSubFinish7324421(arg1)
    print("OnSubFinish7324421")
end

function Quest73244:OnSubStart7324408(arg1)
    print("OnSubStart7324408")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324408(arg1)
    print("OnSubFinish7324408")
end

function Quest73244:OnSubStart7324415(arg1)
    print("OnSubStart7324415")
    this:CallDelay(1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc4395Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    end)
end

function Quest73244:OnSubFinish7324415(arg1)
    print("OnSubFinish7324415")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4395Data.alias)
end

function Quest73244:OnSubStart7324404(arg1)
    print("OnSubStart7324404")
    actorMgr:CreateActorWithPos("Q7324404_Trigger", "Actor/Gadget/Q7324404_Trigger", 70900002, 0, {x = -430.818, y = 212.082, z = 4234.907}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73244:OnSubFinish7324404(arg1)
    print("OnSubFinish7324404")
end

function Quest73244:OnSubStart7324416(arg1)
    print("OnSubStart7324416")
end

function Quest73244:OnSubFinish7324416(arg1)
    print("OnSubFinish7324416")
end

return Quest73244

local TestActorProxy = {}

function TestActorProxy:GetSingleton(arg1)
    local singletonInstance = singletonManager:GetSingletonInstance(arg1)
    if singletonInstance == nil then
        print("Get Singleton " .. arg1 .. " Failed")
    end

    return singletonInstance
end

local singleton

function TestActorProxy:Init()
    singleton = self:GetSingleton("MoleMole.LuaManager")
end

local v

function TestActorProxy:OnSceneLoaded()
    v = self:GetSingleton("MoleMole.EntityManager")
end

function TestActorProxy:OnFinishLoadScene()
    print("Here local avatar loaded!")
end

function TestActorProxy:VehicleOff()
    actorUtils.DisableMainPageWithConfigByQuest(800, true, "DisableNodKraiMainQuestWalk")
end

function TestActorProxy:AAA()
    actorMgr:GetActor("Npc1062800"):DoFreeStyle(1090, true)
end

function TestActorProxy:BB()
    actorUtils.BanUIByQuest(16, true, 40222)
    actorUtils.BanUIByQuest(18, true, 800)
end

function TestActorProxy:CC()
    actorUtils.DisableMainPageByQuest(2020, true, "DisableNodKraiAQ6022GolumbiaHide")
end

function TestActorProxy:DD()
    actorUtils.DisableMainPageByQuest(800, true, "DisableNodKraiAQ6022PlayerHide")
end

function TestActorProxy:EE()
    actorUtils.DisableMainPageByQuest(800, false, "DisableNodKraiAQ6022PlayerHide")
end

function TestActorProxy:FF()
    actorUtils.DisableMainPageByQuest(2020, false, "DisableNodKraiAQ6022GolumbiaHide")
end

function TestActorProxy:TestUIEffect()
    actorUtils.DisableMainPageWithConfigByQuest(800, false, "DisableNodKraiMainQuestWalk")
end

function TestActorProxy:TestDD(arg1, arg2)
    if arg1 == nil then
        arg1 = false
    end

    if arg2 == nil then
        arg2 = false
    end

    print("TestDD " .. tostring(arg1) .. " a=" .. tostring(arg2))
end

function TestActorProxy:TestNarrator()
    local tbl = {narratorId = 1403801, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
    actorMgr:GetActor("355"):QuestNarratorTask(tbl, nil)
end

function TestActorProxy:CreateNpcWithData()
    local tbl = {
        id = 1015,
        alias = "Npc1015",
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        bornShoesOffset = offset,
        skipCloseToGround = true,
        hideModel = false,
        disableInter = false,
        disableMoveCollider = true,
        dontTickPause = true,
        zeroLodTransitionTime = true,
        addPhysicMaterial = true,
        lookAtParam = {lockHeadControl = false, lookPos = {x = 0, y = 0, z = 0}},
        freestyleParam = {isSit = false, freestyleType = 0},
        emotionParam = {
            autoBlink = false,
            emotion = "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01",
            phoneme = "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Delta01"
        },
        animatorParams = {
            {triggerType = 1, parName = "LeftFingerStyle", parValue = "3"},
            {triggerType = 1, parName = "RightFingerStyle", parValue = "1"}
        }
    }

    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 2
    local npc = self:CreateNpc(2010, tbl, n, M.Pos(0, 0, 0), false, 3)
    print("Create Npc Success!" .. tostring(n))
end

function TestActorProxy:CreateNpcForHDMesh(arg1)
    local id = 4317
    if arg1 ~= nil then
        local num = tonumber(arg1)
        print("testID=" .. tostring(num))
        if 0 < num then
            id = num
        end
    end

    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
    }

    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 2
    local npc = self:CreateNpc(2010, tbl, n, M.Pos(0, 0, 0), false, 3)
    print("CreateNpcForHDMesh Success! " .. tostring(id))
    npc:NpcFollowTaskWithParams(2, nil, nil, nil, "Move", false, 1, 6, 1.5, 20, 30, 40, 4, 6)
end

function TestActorProxy:TestInteraction()
    actorMgr:GetActor("Npc1669"):EnableInteractionWithUIEx(false)
end

function TestActorProxy:Create1669()
    self:CreateXNpc(1669, 800)
end

function TestActorProxy:Create21544()
    self:CreateXNpc(21544, 79064)
end

function TestActorProxy:CreateRandomNpc()
    local tbl = {}
    local n = 1059
    local v = 1054
    tbl[1] = 1058
    tbl[2] = n
    tbl[3] = v
    local v2 = tbl[math.random(1, 3)]
    local currSceneID = sceneData.currSceneID
    local n2 = math.random(9000000, 10000000)
    self:CreateXNpc(v2, n2)
end

function TestActorProxy:CreateCyno()
    local n = math.random(9000000, 10000000)
    self:CreateXNpc(1058, n)
end

function TestActorProxy:CreateCandace()
    local n = math.random(9000000, 10000000)
    self:CreateXNpc(1059, n)
end

function TestActorProxy:CreateNilou()
    local n = math.random(9000000, 10000000)
    self:CreateXNpc(1054, n)
end

function TestActorProxy:TestLayerWeight()
    local actor = actorMgr:GetActor("Npc1665")
    actor:SetAnimatorLayerWeight("HeadControllerRotationLayer", 0.2)
    actor:SetAnimatorLayerWeight("HeadControllerRotationLayer", 0.3)
end

function TestActorProxy:CreateXXXLL()
    print("CreateXXXLL")
    self:CreateXNpc(9500, 70678)
end

function TestActorProxy:DeleteXXXLL()
    self:DeleteNpc(9500, 70678)
end

function TestActorProxy:CreateXG()
    self:CreateXNpc(1665, 800)
end

function TestActorProxy:DeleteXG()
    self:DeleteNpc(1665, 800)
end

function TestActorProxy:CreateYD()
    self:CreateXNpc(1044, 800)
end

function TestActorProxy:DeleteYD()
    self:DeleteNpc(1044, 800)
end

function TestActorProxy:CreateY()
    local pos = M.Pos(1605.672, 286.2045, -1120.195)
    self:CreateXNpcAt(1026, 800, pos)
end

function TestActorProxy:DeleteY()
    self:DeleteNpc(1026, 800)
end

function TestActorProxy:YMove()
    local actor = actorMgr:GetActor("Npc1026800")
    actor:SetNpcAnimator(1, "Move", 1, 0, true, true)
    local pos = M.Pos(1601.54, 286.2613, -1113.253)
    actor:AdvRunToRoute({pos}, 0, false, true, true, true)
end

function TestActorProxy:TestGachaEffect()
    actorUtils.SetPostEffect("PostEffect_Gacha_ShootingStar", true)
end

function TestActorProxy:ClearGachaEffect()
    actorUtils.SetPostEffect("PostEffect_Gacha_ShootingStar", false)
end

function TestActorProxy:TestGadgetState()
    actorMgr:GetActor("800"):SetLocalGadgetState(70710703, "1", 200)
end

function TestActorProxy:TestGadgetState1()
    actorMgr:GetActor("800"):SetLocalGadgetState(70710703, "1", 201)
end

function TestActorProxy:CreateSpeech()
    require("Actor/Gadget/Q14026Trigger")
    local actor = actorMgr:GetActor("355")
    self:CreateXNpc(6153, 355)
    actor.ClearSpeechBubbleTask(actor)
    actor.CreateSpeechBubbleTask(actor, 6153, 3071309, 0, false, 0, 0, false, false)
    actor.CallDelay(actor, 3, function(arg1)
        actor:CreateSpeechBubbleTask(6153, 3071312, 0, false, 0, 0, false, false)
    end)
end

function TestActorProxy:CreateAA()
    self:CreateXNpc(13356, 800)
end

function TestActorProxy:CreateKQ()
    self:CreateXNpc(1016, 800)
end

function TestActorProxy:DeleteKQ()
    self:DeleteNpc(1016, 800)
end

function TestActorProxy:CreateKQ2()
    local pos = M.Pos(1614.5, 286.3, -1120)
    self:CreateXNpcAt(1016, 800, pos)
end

function TestActorProxy:KQSit()
    actorMgr:GetActor("Npc1016800"):SitOnChair(0, false, true)
end

function TestActorProxy:KQStand()
    actorMgr:GetActor("Npc1016800"):StandFromChair()
end

function TestActorProxy:CreateNilou2()
    local pos = M.Pos(1600.6, 286, -1119.1)
    self:CreateXNpcAt(1054, 800, pos)
end

function TestActorProxy:KQNotify()
    actorUtils.FireEventWithSource(ActorEvtTargetType.SINGLE, "Npc1016800", 0, nil, true, ActorEventSource.QUEST, 355)
end

function TestActorProxy:KQLookAt()
    actorMgr:GetActor("Npc1016800"):LookAtTarget("Npc1054800", {yaw = 0, pitch = 0, lookAtPointName = "Neck", useNeckOffset = true})
end

function TestActorProxy:KQLookAtPos()
    local actor = actorMgr:GetActor("Npc1016800")
    local pos = M.Pos(1605.1, 286, -1118.8)
    actor:LookAt(pos)
end

function TestActorProxy:KQEmoji()
    actorMgr:GetActor("Npc1016800"):PlayEmojiBubble("EmojiBubble_Emoji_Sleep")
    if NG_HSOD_DEBUG then
        print(debug.traceback())
    end
end

function TestActorProxy:KQStopEmoji()
    actorMgr:GetActor("Npc1016800"):StopCurEmojiBubble()
end

function TestActorProxy:KQInter()
    actorMgr:GetActor("Npc1016800"):EnableInteractionWithUIEx(false)
end

function TestActorProxy:KQWorry()
    actorMgr:GetActor("Npc1016800"):PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end

function TestActorProxy:KQSweat()
    actorMgr:GetActor("Npc1016800"):PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
end

function TestActorProxy:KQAngry()
    actorMgr:GetActor("Npc1016800"):PlayEmojiBubble("EmojiBubble_Emoji_Angry")
end

function TestActorProxy:KQShock()
    actorMgr:GetActor("Npc1016800"):PlayEmojiBubble("EmojiBubble_Emoji_Happy")
end

function TestActorProxy:AddTalkToKQ()
    local actor = actorMgr:GetActor("Npc1016800")
    local tbl = {
        {
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001},
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3071311},
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3071312}
        }
    }

    actor:AddPriorityInter(InterTimingType.BTN, tbl)
end

function TestActorProxy:Emoji()
    actorMgr:GetActor("Npc10162010"):PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
end

function TestActorProxy:CreateXNpcAt(id, arg2, arg3)
    local currSceneID = sceneData.currSceneID
    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id) .. tostring(arg2),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        room_id = 1,
        scene_id = currSceneID,
        platformInfo = {
            sceneId = 0,
            groupId = 0,
            configId = 0,
            offsetPos = {x = 0, y = 0, z = 0},
            offsetRot = {x = 0, y = 0, z = 0}
        },
        skipCloseToGround = false,
        hideModel = false,
        disableInter = false,
        disableMoveCollider = false,
        dontTickPause = false,
        zeroLodTransitionTime = false,
        addPhysicMaterial = false,
        lookAtParam = {lockHeadControl = false, lookPos = {x = 0, y = 0, z = 0}},
        freestyleParam = {isSit = false, freestyleType = 0},
        emotionParam = {autoBlink = false, emotion = "", phoneme = ""},
        animatorParams = {}
    }

    if arg2 == 0 then
        tbl.alias = "Npc" .. tostring(id)
    end

    local npc = self:CreateNpc(arg2, tbl, arg3, M.Pos(0, 0, 0), false, currSceneID)
end

function TestActorProxy:CreateXNpc(id, arg2)
    local currSceneID = sceneData.currSceneID
    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id) .. tostring(arg2),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        room_id = 1,
        scene_id = currSceneID,
        platformInfo = {
            sceneId = 0,
            groupId = 0,
            configId = 0,
            offsetPos = {x = 0, y = 0, z = 0},
            offsetRot = {x = 0, y = 0, z = 0}
        }
    }

    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    local npc = self:CreateNpc(arg2, tbl, n, M.Pos(0, 0, 0), false, currSceneID)
end

function TestActorProxy:CreateNpc(arg1, arg2, arg3, arg4, arg5, arg6)
    local npcActorData = actorMgr:CreateNPCActorData(arg1, arg2, nil, arg3, arg4, arg5, arg6)
    return actorMgr:CreateActorWithData(npcActorData)
end

function TestActorProxy:DeleteNpc(arg1, arg2)
    local str = "Npc" .. tostring(arg1) .. tostring(arg2)
    actorMgr:DestroyNpcActorByAlias(str, false)
end

function TestActorProxy:DelayDo()
    actorMgr:GetActor("355"):CallDelayByQuest("TestDelayKey1", 5, function()
        print("---- Fire!!!----")
    end)
end

function TestActorProxy:CancelDelayDo()
    actorMgr:GetActor("355"):UnCallDelayByQuest("TestDelayKey1")
end

function TestActorProxy:CreateMonster()
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 2
    globalActor:SpawnLocalMonster("show102", 21010301, 1, n, 0, 0, 1.0)
end

function TestActorProxy:CreateWaterNpc()
    local id = 1016
    local n = 2020
    local currSceneID = sceneData.currSceneID
    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id) .. tostring(n),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        room_id = 1,
        scene_id = currSceneID,
        inWater = true
    }

    local npc = self:CreateNpc(n, tbl, {x = 1722, y = 481, z = 4981}, M.Pos(0, 0, 0), false, currSceneID)
end

function TestActorProxy:CreatePlatformNpc()
    local id = 1015
    local n = 2010
    local groupId = 133403019
    local configId = 19001
    local scene_id = 3
    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id) .. tostring(n),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        room_id = 1,
        scene_id = scene_id,
        platformInfo = {
            sceneId = scene_id,
            groupId = groupId,
            configId = configId,
            offsetPos = {x = 0.5, y = 3, z = 0.5},
            offsetRot = {x = 0, y = 45, z = 0}
        }
    }

    local v = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    local npc = self:CreateNpc(n, tbl, v, M.Pos(0, 0, 0), false, scene_id)
    local tbl2 = {
        {x = 0.36, y = 3.4, z = 5.0},
        {x = -1.094, y = 3.414, z = 3.343},
        {x = 1.412, y = 3.414, z = 0.435},
        {x = 0.1258291, y = 3.890991, z = 4.416081},
        {x = 1.721196, y = 3.863922, z = 3.42141},
        {x = -0.1454324, y = 3.863892, z = 1.143374},
        {x = 1.743809, y = 1.600861, z = -6.871088},
        {x = -0.8583223, y = 1.604034, z = -6.91239},
        {x = -0.6573364, y = 3.862396, z = 3.768604}
    }

    npc:MoveToOnPlatform(tbl2, true, true, false, false, groupId, configId)
end

function TestActorProxy:CreateDragonTrigger()
    local actor = actorMgr:GetActor("800")
    actor:CreateQuestNpcWithTrigger("Q800AmberTrigger", 80001, 1002, 1, 5, 2)
    actor:CreateQuestNpcWithTriggerInVehicle("Q800AmberTrigger", 80001, 1002, 1, 5, 1, 2, {30013}, "QUEST_Message_Q46401")
end

function TestActorProxy:CreateTrigger()
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    actorMgr:GetActor("73238"):CreateQuestTrigger("Q14007Trigger5A", "Actor/Gadget/Q14007Trigger5", n, M.Pos(0, 0, 0), 3)
end

function TestActorProxy:DelTrigger()
    actorMgr:GetActor("73238").uActor:RemoveAllTrigger()
end

function TestActorProxy:DelTrigger1()
    actorMgr:GetActor("73238"):DestroyQuestTrigger("Q14007Trigger5A", false)
end

function TestActorProxy:TestDragonMove()
    local actor = actorMgr:GetActor("Npc6159800")
    local pos = M.Pos(-2192.158, 324.0295, 8151.235)
    actor:SetNpcAnimator(3, "Water", 0, 0, true, true)
    actor:RunToTask(pos)
end

function TestActorProxy:TestCS()
    actorMgr:GetActor("8019"):PlayCutsceneIndex(80070101)
end

function TestActorProxy:TestEffect()
    local avatarPos = actorUtils.GetAvatarPos()
    globalActor:PlayEffect("Eff_Censer_Empty_SoundCyAQ2", avatarPos, nil, nil, false)
end

function TestActorProxy:TestToArcLight()
    local tbl = {x = -2227.143, y = 324.0313, z = 8149.583}
    globalActor:TransmitPlayerToArcLight(3, tbl, {x = 0, y = 153, z = 0}, 1, 1, 0.5, 1, 0.5, function()
        print("set to arc liaht finish")
    end)
end

function TestActorProxy:CreateRepeatableTrigger()
    actorMgr:GetActor("800"):CreateRepeatableNpcShowDisappearTrigger("Q800testRepeatTrigger", 80069, 1005, 0, 6, 10)
end

function TestActorProxy:BindNpcPlatform()
    print("---BindNpcPlatform!!")
    local n = 1015
    local v = 2010
    local str = "Npc" .. tostring(npcId) .. tostring(v)
    local pos = M.Pos(875.5, 265, 326.7)
    actorMgr:GetActor("355"):BindQuestNpcToPlatform(n, v, {
        sceneId = 3,
        groupId = 133104187,
        configId = 709,
        offsetPos = {x = 1, y = 0, z = 1},
        offsetRot = {x = 0, y = 30, z = 0}
    })
end

function TestActorProxy:BindNpcPlatform1()
    print("---BindNpcPlatform!!")
    local n = 1015
    local v = 2010
    local str = "Npc" .. tostring(npcId) .. tostring(v)
    local pos = M.Pos(875.5, 265, 326.7)
    actorMgr:GetActor("355"):BindQuestNpcToPlatform(n, v, {
        sceneId = 3,
        groupId = 133104302,
        configId = 302002,
        offsetPos = {x = 1, y = 0, z = 1},
        offsetRot = {x = 0, y = 30, z = 0}
    })
end

function TestActorProxy:UnbindNpcPlatform()
    print("---unbind!!")
    local n = 2010
    local str = "Npc" .. tostring(npcId) .. tostring(n)
    local pos = M.Pos(875.5, 265, 326.7)
    actorMgr:GetActor("355"):UnbindQuestNpcFromPlatform(1015, n, pos, M.Pos(0, 0, 0))
end

function TestActorProxy:DeleteGY()
    self:DeleteNpc(1015, 2010)
end

function TestActorProxy:CreateTriggerTest()
    print("---CreateTriggerTest! aa!")
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 5
    actorMgr:CreateActorWithPos("xxxx", "Actor/Gadget/Q202301Trigger", 70900002, 0, {x = 2875.0, y = 262.9, z = -1779.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function TestActorProxy:DeleteTriggerTest()
    print("---DeleteTriggerTest! aa!")
    actorMgr:DestroyEntityActor("Q80003_TriggerIn_Test")
end

function TestActorProxy:CreatePolygonTriggerTest()
    print("---CreateTriggerTest! aa!")
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 5
    actorMgr:CreateActorWithPos("xxxx", "Actor/Gadget/Q202301Trigger", 70900002, 0, n, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function TestActorProxy:CreateLocalGadget()
    print("---CreateLocalGadget!")
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    actorMgr:GetActor("355"):CreateLocalGadget(70710703, "1", n, M.Pos(0, 0, 0), 3, nil, nil, 0, false)
end

function TestActorProxy:TestNtf()
    actorUtils.FireEventWithSource(ActorEvtTargetType.SINGLE, "Npc1669", 1, nil, true, 1, 99)
end

function TestActorProxy:TestNtf1()
    actorUtils.FireLightEventWithSource(ActorEvtTargetType.SINGLE, "Npc1669", 0, nil, true, 1, 99)
end

function TestActorProxy:TestCameraLook()
    local lookPos = {x = 1618.8, y = 291.4, z = -1108.0}
    local followPos = {x = 1601.0, y = 286.3, z = -1114.0}
    globalActor:EnterSceneLookCameraByParam({
        lookPos = lookPos,
        offsetY = 0.0,
        duration = 5,
        isForceLook = true,
        isAllowInput = true,
        isRecoverKeepCurrent = true,
        followType = 0,
        followPos = followPos,
        isForceWalk = false,
        isChangePlayMode = true,
        isSetScreenXY = true,
        screenX = 0.3,
        screenY = 0.5,
        keepRotType = 0,
        customRadius = 0,
        disableProtect = 0,
        blendType = 0,
        blendDuration = 2,
        exitDuration = 3
    })
end

function TestActorProxy:TestExitCameraLook()
    globalActor:ExitSceneLookCamera()
end

function TestActorProxy:TestCreateQuestNpc()
    self:CreateXNpc(6159, 800)
end

function TestActorProxy:TestReturnQuestNpc()
    actorMgr:GetActor("800").uActor:ReturnQuestNpc(10204, false)
end

function TestActorProxy:TestDeleteQuestNpc()
    actorMgr:GetActor("800"):SafeDestroyQuestNpc("Npc10204", 3)
end

function TestActorProxy:CreateZL()
    self:CreateXNpc(10232, 800)
end

function TestActorProxy:DoZL()
    actorMgr:GetActor("Npc10232800"):DoFreeStyleWithSuite(4090, true, nil, true, true, false, false, "FlyKite")
end

function TestActorProxy:DoFree()
    actorMgr:GetActor("Npc10232800"):DoFreeStateTrigger()
end

function TestActorProxy:TestInterData()
    local tbl = {targetType = EActorTargetType.Avatar, configId = 0}
    print(self:MakeInterInfo("A1", tbl))
    local v = {targetType = EActorTargetType.Npc, configId = 1521, subId = 340}
    print(self:MakeInterInfo("A2", v))
    local tbl2 = {
        targetType = EActorTargetType.QuestGadget,
        configId = 70290745,
        subId = 397,
        alias = "local_gadget"
    }

    print(self:MakeInterInfo("A3", tbl2))
    local tbl3 = {targetType = EActorTargetType.GroupGadget, configId = 709, subId = 133104302}
    print(self:MakeInterInfo("A4", tbl3))
    local tbl4 = {targetType = EActorTargetType.Npc, configId = 0, subId = 0, alias = "Npc1016"}
    print(self:MakeInterInfo("", tbl4))
end

function TestActorProxy:MakeInterInfo(arg1, arg2)
    return globalActor:MakeInterInfo(arg1, arg2)
end

function TestActorProxy:TestSpecialView()
    local flag = true
    local n = 1
    local color = M.Color(1, 0.5, 1, 1)
    globalActor.uActor:EnableSpecialElementView(flag, 800, n, color, 500, {})
end

function TestActorProxy:TestSpecialViewOff()
    globalActor.uActor:EnableSpecialElementView(false, 0, M.Color(1, 1, 1, 1), 0, nil)
end

function TestActorProxy:TestNpcTrigger()
    local actor = actorMgr:GetActor("800")
    actor:CreateQuestNpcWithTriggerBlack("Q800AmberTrigger", 80001, 1002, 1, 5, 1, 2)
    local tbl = {
        {
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001},
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3071311},
            {type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3071312}
        }
    }

    actor:GetQuestNpcActor("Ambor"):AddPriorityInter(InterTimingType.BTN, tbl)
end

function TestActorProxy:DeleteNpcTrigger()
    actorMgr:GetActor("800"):DestroyNpcTrigger("Q800AmberTrigger")
end

function TestActorProxy:DeleteNpcTrigger1()
    actorMgr:GetActor("800"):ClearAllNpcTrigger()
end

function TestActorProxy:PrintAllActor()
    local BaseActorProxy = require("Actor/BaseActorProxy")
    local EntityActorProxy = require("Actor/EntityActorProxy")
    local QuestActorProxy = require("Actor/Quest/QuestActorProxy")
    local NpcActorProxy = require("Actor/Npc/NpcActorProxy")
    local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")
    print("BaseActorProxy = " .. tostring(BaseActorProxy))
    print("EntityActorProxy = " .. tostring(EntityActorProxy))
    print("QuestActorProxy = " .. tostring(QuestActorProxy))
    print("NpcActorProxy = " .. tostring(NpcActorProxy))
    print("GadgetActorProxy = " .. tostring(GadgetActorProxy))
    local n = 0
    for k, actor in pairs(actorMgr.ActorDic) do
        n = n + 1
        if actor ~= nil then
            local className = ""
            if actor.__super ~= nil then
                className = actor.__super.__className
            end

            print("(" .. tostring(n) .. ")  " .. k .. " = " .. tostring(actor) .. " superName: " .. tostring(className))
        else
            print(k .. " = nil")
        end
    end
end

function TestActorProxy:CreateAAA()
    local n = math.random(9000000, 10000000)
    self:CreateXNpc(1025, n)
end

function TestActorProxy:CreateAvatar()
    local id = 1026
    local n = 2010
    local currSceneID = sceneData.currSceneID
    local tbl = {
        id = id,
        alias = "Npc" .. tostring(id) .. tostring(n),
        script = "Actor/Npc/TempNPC",
        point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        room_id = 1,
        scene_id = currSceneID,
        inWater = true
    }

    local v = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    local npc = self:CreateNpc(n, tbl, v, M.Pos(0, 0, 0), false, currSceneID)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = M.Pos(1, 0, 0)
    local pos2 = M.Pos(0, 0, -1)
    local n2 = 3
    local n3 = avatarPos + pos * n2 * 1 + pos2 * n2 * 0
    local n4 = n3 + pos * n2 * 1 + pos2 * n2 * 0
    local n5 = n4 + pos * n2 * 1 + pos2 * n2 * 1 + pos * n2 * -1 + pos2 * n2 * 1
    local n6 = n5 + pos * n2 * 2 + pos2 * n2 * 0
    local n7 = n6 + pos * n2 * 0 + pos2 * n2 * -4
    local n8 = n7 + pos * n2 * -2 + pos2 * n2 * 0
    local v2 = n3
    local tbl2 = {}
    local v3 = n4
    local v4 = n4
    local v5 = n5
    local v6 = n6
    local v7 = n7
    local v8 = n8
    local v9 = v2
    tbl2[1] = n3
    tbl2[2] = v3
    tbl2[3] = v4
    tbl2[4] = v5
    tbl2[5] = v6
    tbl2[6] = v7
    tbl2[7] = v8
    tbl2[8] = v9
end

function TestActorProxy:DelAvatar()
    actorMgr:DestroyNpcActorByAlias("Npc10262010", false)
end

function TestActorProxy:DiveWalk()
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    local actor = actorMgr:GetActor("Npc10262010")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = M.Pos(1, 0, 0)
    local v = M.Pos(0, 0, -1)
    local pos2 = M.Pos(2687.673, 428.7893, 4807.442)
    local pos3 = M.Pos(2691.938, 428.7893, 4808.029)
    local pos4 = M.Pos(2689.428, 428.7893, 4810.549)
    local pos5 = M.Pos(2691.308, 428.7893, 4812.309)
    local pos6 = M.Pos(2694.128, 428.7893, 4812.329)
    local pos7 = M.Pos(2695.048, 428.7893, 4810.179)
    local pos8 = M.Pos(2693.898, 428.7893, 4808.479)
    local pos9 = M.Pos(2699.7, 428.7893, 4809.4)
    local pos10 = M.Pos(2696.9, 428.7, 4815.6)
    local pos11 = M.Pos(2692.4, 428.5, 4815.6)
    local pos12 = M.Pos(2688.5, 427.5, 4812.6)
    local v2 = pos2
    local tbl = {}
    local v3 = pos3
    local v4 = pos4
    local v5 = pos5
    local v6 = pos6
    local v7 = pos7
    local v8 = pos8
    local v9 = pos9
    local v10 = pos10
    local v11 = pos11
    local v12 = pos12
    local v13 = v2
    tbl[1] = pos2
    tbl[2] = v3
    tbl[3] = v4
    tbl[4] = v5
    tbl[5] = v6
    tbl[6] = v7
    tbl[7] = v8
    tbl[8] = v9
    tbl[9] = v10
    tbl[10] = v11
    tbl[11] = v12
    tbl[12] = v13
    actor:AdvWalkToRoute(tbl, 0, false, true, true, true)
end

function TestActorProxy:DiveMove()
    local n = actorUtils.GetAvatarPos() + actorUtils.GetAvatarForward() * 1
    local actor = actorMgr:GetActor("Npc10262010")
    local pos = M.Pos(2687.673, 428.7893, 4807.442)
    local v = M.Pos(2691.938, 428.7893, 4808.029)
    local tbl = {}
    local v2 = v
    tbl[1] = pos
    tbl[2] = v2
    actor:AdvRunToRoute(tbl, 0, false, true, true, true)
end

function TestActorProxy:CreateFMN()
    self:CreateXNpc(1074, 2010)
    local actor = actorMgr:GetActor("Npc10742010")
    actor:SetTransformEnable("Helmet", true)
    actor:SetTransformEnable("Brow", false)
end

function TestActorProxy:DelFMN()
    self:DeleteNpc(1074, 2010)
end

function TestActorProxy:CreateFMN1()
    self:CreateXNpc(1074, 800)
end

function TestActorProxy:DelFMN1()
    self:DeleteNpc(1074, 800)
end

function TestActorProxy:TestRender()
    actorMgr:GetActor("Npc10742010"):SetRenderersEnable({"Helmet"}, false)
end

function TestActorProxy:TestTrans()
    local actor = actorMgr:GetActor("Npc10742010")
    actor:SetTransformEnable("Helmet", true)
    actor:SetTransformEnable("Brow", false)
end

function TestActorProxy:TestTrans2()
    actorMgr:GetActor("Npc10742010"):SetTransformEnable("Brow", false)
end

local cutsceneTestDic = {}

local tbl = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    resPath = "ART/Cutscene/Cs_Opening_CutScene2_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local n2 = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = n2
tbl.startOffset = startOffset
tbl.keepCamera = true
tbl.modifyLastPoseOffset = true

local tbl2 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q354",
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_DragonInMDCity_CutScene_Convert",
    startPosType = CutsceneInitPosType.FREE,
    startOffset = {x = 0, y = 0, z = 0}
}

cutsceneTestDic[1] = tbl
cutsceneTestDic[2] = tbl2
TestActorProxy.CutsceneTestDic = cutsceneTestDic

function TestActorProxy:Cutscene(arg1)
    print("Here test cutscene!")
    print(arg1)
    globalActor:PlayCutscene(TestActorProxy.CutsceneTestDic[arg1])
end

function TestActorProxy:FreeCutscene()
    local avatarPos = actorUtils.GetAvatarPos()
    local v = globalActor
    local v2 = v
    local playFreeCutscene = v.PlayFreeCutscene
    local tbl = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        resPath = "ART/CameraAni/Quest/Ca_Quest_MQ361_DragonFlyT_Test",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = avatarPos.x, y = avatarPos.y + 15, z = avatarPos.z + 10},
        useTargetPos = true
    }

    local targetPos = {}
    local n = 200
    local n2 = -1174
    targetPos[1] = 2450
    targetPos[2] = n
    targetPos[3] = n2
    tbl.targetPos = targetPos
    tbl.syncLoad = true
    playFreeCutscene(v2, tbl)
end

return TestActorProxy

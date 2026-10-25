require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12025 = class("Quest12025", QuestActorProxy)
Quest12025.defaultAlias = "Quest12025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202517"] = self.OnSubStart1202517,
        ["1202519"] = self.OnSubStart1202519,
        ["1202516"] = self.OnSubStart1202516,
        ["1202520"] = self.OnSubStart1202520,
        ["1202501"] = self.OnSubStart1202501,
        ["1202523"] = self.OnSubStart1202523,
        ["1202502"] = self.OnSubStart1202502,
        ["1202503"] = self.OnSubStart1202503,
        ["1202504"] = self.OnSubStart1202504,
        ["1202505"] = self.OnSubStart1202505,
        ["1202506"] = self.OnSubStart1202506,
        ["1202507"] = self.OnSubStart1202507,
        ["1202518"] = self.OnSubStart1202518,
        ["1202515"] = self.OnSubStart1202515,
        ["1202508"] = self.OnSubStart1202508,
        ["1202522"] = self.OnSubStart1202522,
        ["1202509"] = self.OnSubStart1202509,
        ["1202510"] = self.OnSubStart1202510,
        ["1202512"] = self.OnSubStart1202512,
        ["1202514"] = self.OnSubStart1202514,
        ["1202521"] = self.OnSubStart1202521
    }
end

function Quest12025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202517"] = self.OnSubFinish1202517,
        ["1202519"] = self.OnSubFinish1202519,
        ["1202516"] = self.OnSubFinish1202516,
        ["1202520"] = self.OnSubFinish1202520,
        ["1202501"] = self.OnSubFinish1202501,
        ["1202523"] = self.OnSubFinish1202523,
        ["1202502"] = self.OnSubFinish1202502,
        ["1202503"] = self.OnSubFinish1202503,
        ["1202504"] = self.OnSubFinish1202504,
        ["1202505"] = self.OnSubFinish1202505,
        ["1202506"] = self.OnSubFinish1202506,
        ["1202507"] = self.OnSubFinish1202507,
        ["1202518"] = self.OnSubFinish1202518,
        ["1202515"] = self.OnSubFinish1202515,
        ["1202508"] = self.OnSubFinish1202508,
        ["1202522"] = self.OnSubFinish1202522,
        ["1202509"] = self.OnSubFinish1202509,
        ["1202510"] = self.OnSubFinish1202510,
        ["1202512"] = self.OnSubFinish1202512,
        ["1202514"] = self.OnSubFinish1202514,
        ["1202521"] = self.OnSubFinish1202521
    }
end

function Quest12025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1202503"] = self.OnSubFailed1202503}
end

function Quest12025:Start()
    print("Start")
end

function Quest12025:OnDestroy()
    print("OnDestroy")
end

function Quest12025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12025:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12025:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest12025:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueString == "FollowNpcGadget_Test01" then
        actorUtils.FinishQuestID(false, 1202503)
        local actors = clientData.Actors
    end
end

function Quest12025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1202504 then
        self:SpawnGadgetById(1202510, gadgets.Gadget70710581Data.id, 1)
    elseif arg1 == 1202503 then
        globalActor:ChangeWeather("BigWorld/Weather_Storm")
    end
end

function Quest12025:OpenCompass1202519()
    print("OpenCompass1202519")
    self.CallOnElemViewOpen(self, function()
        self:FinishQuestID(false, 1202519)
    end)
end

function Quest12025:OpenCompass1202501()
    print("OpenCompass1202501")
    self.CallOnElemViewOpen(self, function()
        self:NarratorOnlyTaskByData(datas.kaiche1202504, nil, 12025)
    end)
end

function Quest12025:OnSubStart1202517(arg1)
    print("OnSubStart1202517")
    actorMgr:CreateActorWithPos("Q1202516Trigger02", "Actor/Gadget/Q1202516Trigger02", 70900002, 0, {x = -3964.959, y = 252.9475, z = -2205.695}, {x = 0, y = 0, z = 0}, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
end

function Quest12025:OnSubFinish1202517(arg1)
    print("OnSubFinish1202517")
    self:ActorDestroy("Q1202516Trigger02")
end

function Quest12025:OnSubStart1202519(arg1)
    print("OnSubStart1202519")
    self:OpenCompass1202519()
    actorMgr:CreateActorWithPos("Q1202519Trigger", "Actor/Gadget/Q1202519Trigger", 70900002, 0, {x = -3964.959, y = 252.9475, z = -2205.695}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12025:OnSubFinish1202519(arg1)
    print("OnSubFinish1202519")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:NarratorOnlyTaskByData(datas.kaiche1202502, nil, 12025)
    self:UnCallFunc(function(arg1)
        arg1:OpenCompass1202519()
    end)

    self:ActorDestroy("Q1202519Trigger")
end

function Quest12025:OnSubStart1202516(arg1)
    print("OnSubStart1202516")
    actorMgr:CreateActorWithPos("Q1202516Trigger", "Actor/Gadget/Q1202516Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202516_camp").pos, sceneData:GetDummyPoint(3, "Q1202516_camp").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202516(arg1)
    print("OnSubFinish1202516")
    self:ActorDestroy("Q1202516Trigger02")
    self:ActorDestroy("Q1202516Trigger")
end

function Quest12025:OnSubStart1202520(arg1)
    print("OnSubStart1202520")
    actorMgr:CreateActorWithPos("Q1202516Trigger03", "Actor/Gadget/Q1202516Trigger03", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202620_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202620_questpoint").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202520(arg1)
    print("OnSubFinish1202520")
end

function Quest12025:OnSubStart1202501(arg1)
    print("OnSubStart1202501")
    actorMgr:CreateActorWithPos("Q1202501Trigger", "Actor/Gadget/Q1202501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202501_Itto").pos, sceneData:GetDummyPoint(3, "Q1202501_Itto").rot, true, false, 3)
    self:OpenCompass1202501()
end

function Quest12025:OnSubFinish1202501(arg1)
    print("OnSubFinish1202501")
    self:TransmitPlayerByQuestId(1202501, 1202501)
    self:ActorDestroy("Q1202516Trigger03")
    self:UnCallFunc(function(arg1)
        arg1:OpenCompass1202501()
    end)
end

function Quest12025:OnSubStart1202523(arg1)
    print("OnSubStart1202523")
    actorMgr:CreateActorWithPos("Q1202523Trigger", "Actor/Gadget/Q1202523Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202504_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202504_questpoint").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202523(arg1)
    print("OnSubFinish1202523")
    self:ActorDestroy("Q1202523Trigger")
end

function Quest12025:OnSubStart1202502(arg1)
    print("OnSubStart1202502")
    actorMgr:CreateActorWithPos("Q1202502Trigger", "Actor/Gadget/Q1202502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202504_player").pos, sceneData:GetDummyPoint(3, "Q1202504_player").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:EnablePlayerInput(true)
    self:ExitWildSneakMode()
    self:SafeDestroyQuestNpc(npcs.Npc12315Data.alias, 3)
end

function Quest12025:OnSubFinish1202502(arg1)
    print("OnSubFinish1202502")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:ActorDestroy("Q1202502Trigger")
end

function Quest12025:OnSubStart1202503(arg1)
    print("OnSubStart1202503")
    self:EnterWildSneakMode(20)
    self:CreateQuestNpc(arg1, npcs.Npc12315Data.id, 4):CallOnStart(function(arg1)
        arg1.PatrolPosNum = 1
        arg1.PatrolPos = datas.RoutePointsData
        arg1.PatrolDir = datas.RoutePointsData
        arg1.PatrolNext = 1
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:SpawnGadget(arg1, gadgets.Gadget70290185Data.id, 1)
    actorMgr:CreateActorWithPos("Q1202503TriggertoFail", "Actor/Gadget/Q1202503TriggertoFail", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202521_tofailq03").pos, sceneData:GetDummyPoint(3, "Q1202521_tofailq03").rot, true, false, 3)
    globalActor:StartGuide("GuideIttoThrowBeanSkilliOS")
    globalActor:StartGuide("GuideIttoThrowBeanGetDowniOS")
end

function Quest12025:OnSubFinish1202503(arg1)
    print("OnSubFinish1202503")
    self:UnSpawn(gadgets.Gadget70290185Data.alias)
    self:NarratorOnlyTaskByData(datas.kaiche1202510, nil, 12025)
    self:GetQuestNpcActor(npcs.Npc12315Data.alias):DoFreeStyle(1080, true, nil, true, true, false)
    self:ActorDestroy("Q1202503TriggertoFail")
    globalActor:EndGuide("GuideIttoThrowBeanSkilliOS")
    globalActor:EndGuide("GuideIttoThrowBeanSkillPC")
    globalActor:EndGuide("GuideIttoThrowBeanSkillPS")
    globalActor:EndGuide("GuideIttoThrowBeanGetDowniOS")
    globalActor:EndGuide("GuideIttoThrowBeanGetDownPC")
    globalActor:EndGuide("GuideIttoThrowBeanGetDownPS")
    self:ExitWildSneakMode()
end

function Quest12025:OnSubFailed1202503(arg1)
    print("OnSubFailed1202503")
    self:ActorDestroy("Q1202503TriggertoFail")
    self:SafeDestroyQuestNpc(npcs.Npc12315Data.alias, 3)
    globalActor:EndGuide("GuideIttoThrowBeanSkilliOS")
    globalActor:EndGuide("GuideIttoThrowBeanSkillPC")
    globalActor:EndGuide("GuideIttoThrowBeanSkillPS")
    globalActor:EndGuide("GuideIttoThrowBeanGetDowniOS")
    globalActor:EndGuide("GuideIttoThrowBeanGetDownPC")
    globalActor:EndGuide("GuideIttoThrowBeanGetDownPS")
    self:ExitWildSneakMode()
end

function Quest12025:OnSubStart1202504(arg1)
    print("OnSubStart1202504")
    self:CallDelay(0.7, function(arg1_2)
        arg1_2:ShowBlackScreen(0.3, 1, 0.4, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 3)
            arg1_2:SafeDestroyQuestNpc(npcs.Npc12315Data.alias, 3)
            arg1_2:EnablePlayerInput(true)
            arg1_2:RequestInteraction(npcs.Npc1044Data.alias)
        end, nil, nil, "", false, true)
    end)
end

function Quest12025:OnSubFinish1202504(arg1)
    print("OnSubFinish1202504")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest12025:OnSubStart1202505(arg1)
    print("OnSubStart1202505")
    actorMgr:CreateActorWithPos("Q1202505Trigger", "Actor/Gadget/Q1202505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202505_Itto").pos, sceneData:GetDummyPoint(3, "Q1202505_Itto").rot, true, false, 3)
    globalActor:LeaveAllWeather()
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12202Data.id, 2)
end

function Quest12025:OnSubFinish1202505(arg1)
    print("OnSubFinish1202505")
end

function Quest12025:OnSubStart1202506(arg1)
    print("OnSubStart1202506")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1044Data.alias)
    end, nil, nil, "", false, true)
end

function Quest12025:OnSubFinish1202506(arg1)
    print("OnSubFinish1202506")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest12025:OnSubStart1202507(arg1)
    print("OnSubStart1202507")
    actorMgr:CreateActorWithPos("Q1202507Trigger", "Actor/Gadget/Q1202507Trigger", 70900002, 0, {x = -3965.998, y = 235, z = -2119.021}, {x = 0, y = 0, z = 0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q12025WeatherTrigger", "Actor/Gadget/Q12025WeatherTrigger", 70900002, 0, {x = -3950.274, y = 218.3705, z = -2123.818}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12025:OnSubFinish1202507(arg1)
    print("OnSubFinish1202507")
    self:CallDelay(1, function(arg1)
        arg1:EnablePlayerInput(false)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").pos, 1, 2, true, false)
        arg1:CallDelay(0.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.kaiche1202505, nil, 12025)
            arg1:CallDelay(3, function(arg1)
                arg1:EnablePlayerInput(true)
            end)
        end)
    end)
end

function Quest12025:OnSubStart1202518(arg1)
    print("OnSubStart1202518")
    actorMgr:CreateActorWithPos("Q1202507Trigger02", "Actor/Gadget/Q1202507Trigger02", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").pos, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").rot, true, false, 3)
    self:ActorDestroy("Q12025WeatherTrigger")
    actorMgr:CreateActorWithPos("Q1202518weatherTrigger", "Actor/Gadget/Q1202518weatherTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").pos, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202518(arg1)
    print("OnSubFinish1202518")
    self:NarratorOnlyTaskByData(datas.kaiche1202506, nil, 12025)
end

function Quest12025:OnSubStart1202515(arg1)
    print("OnSubStart1202515")
    actorMgr:CreateActorWithPos("Q1202515Trigger", "Actor/Gadget/Q1202515Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202508_LookPoint02").pos, sceneData:GetDummyPoint(3, "Q1202508_LookPoint02").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202515(arg1)
    print("OnSubFinish1202515")
end

function Quest12025:OnSubStart1202508(arg1)
    print("OnSubStart1202508")
    actorMgr:CreateActorWithPos("Q1202508Trigger", "Actor/Gadget/Q1202508Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202508_LookPoint02").pos, sceneData:GetDummyPoint(3, "Q1202508_LookPoint02").rot, true, false, 3)
    self:ClearNarratorTask()
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1202508_LookPoint02").pos, 0, 2, true, false)
    self:NarratorOnlyTaskByData(datas.kaiche1202507, nil, 12025)
end

function Quest12025:OnSubFinish1202508(arg1)
    print("OnSubFinish1202508")
    self:NarratorOnlyTaskByData(datas.kaiche1202508, nil, 12025)
    self:ActorDestroy("Q1202518weatherTrigger")
end

function Quest12025:OnSubStart1202522(arg1)
    print("OnSubStart1202522")
    actorMgr:CreateActorWithPos("Q1202522Trigger", "Actor/Gadget/Q1202522Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202509_LookPoint03").pos, sceneData:GetDummyPoint(3, "Q1202509_LookPoint03").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1202522weatherTrigger", "Actor/Gadget/Q1202522weatherTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").pos, sceneData:GetDummyPoint(3, "Q1202507_LookPoint01").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202522(arg1)
    print("OnSubFinish1202522")
end

function Quest12025:OnSubStart1202509(arg1)
    print("OnSubStart1202509")
    actorMgr:CreateActorWithPos("Q1202509Trigger", "Actor/Gadget/Q1202509Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202509_LookPoint03").pos, sceneData:GetDummyPoint(3, "Q1202509_LookPoint03").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202509(arg1)
    print("OnSubFinish1202509")
    globalActor:LeaveAllWeather()
    self:ActorDestroy("Q1202522weatherTrigger")
end

function Quest12025:OnSubStart1202510(arg1)
    print("OnSubStart1202510")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 3)
        arg1_2:RequestInteraction(npcs.Npc1044Data.alias)
    end, nil, nil, "", false, true)
end

function Quest12025:OnSubFinish1202510(arg1)
    print("OnSubFinish1202510")
    self:ShowBlackScreen(0.4, 2, 0.4, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710581Data.alias)
end

function Quest12025:OnSubStart1202512(arg1)
    print("OnSubStart1202512")
    self:CreateQuestNpc(arg1, npcs.Npc12202Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 1)
    actorMgr:CreateActorWithPos("Q1202512Trigger", "Actor/Gadget/Q1202512Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202512_Child").pos, sceneData:GetDummyPoint(3, "Q1202512_Child").rot, true, false, 3)
end

function Quest12025:OnSubFinish1202512(arg1)
    print("OnSubFinish1202512")
    self:ActorDestroy("Q1202512Trigger")
end

function Quest12025:OnSubStart1202514(arg1)
    print("OnSubStart1202514")
    actorMgr:CreateActorWithPos("Q1202514Trigger", "Actor/Gadget/Q1202514Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202513_Itto").pos, sceneData:GetDummyPoint(3, "Q1202513_Itto").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12350Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12352Data.id, 4)
end

function Quest12025:OnSubFinish1202514(arg1)
    print("OnSubFinish1202514")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12350Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12352Data.alias, 3)
    self:ActorDestroy("Q1202514Trigger")
end

function Quest12025:OnSubStart1202521(arg1)
    print("OnSubStart1202521")
end

function Quest12025:OnSubFinish1202521(arg1)
    print("OnSubFinish1202521")
end

return Quest12025

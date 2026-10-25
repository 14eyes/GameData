require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1030 = class("Quest1030", QuestActorProxy)
Quest1030.defaultAlias = "Quest1030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest1030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest1030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["103001"] = self.OnSubStart103001,
        ["103002"] = self.OnSubStart103002,
        ["103003"] = self.OnSubStart103003,
        ["103007"] = self.OnSubStart103007,
        ["103010"] = self.OnSubStart103010,
        ["103015"] = self.OnSubStart103015,
        ["103004"] = self.OnSubStart103004,
        ["103008"] = self.OnSubStart103008,
        ["103009"] = self.OnSubStart103009,
        ["103011"] = self.OnSubStart103011,
        ["103012"] = self.OnSubStart103012,
        ["103013"] = self.OnSubStart103013,
        ["103014"] = self.OnSubStart103014,
        ["103016"] = self.OnSubStart103016,
        ["103017"] = self.OnSubStart103017,
        ["103018"] = self.OnSubStart103018,
        ["103019"] = self.OnSubStart103019,
        ["103024"] = self.OnSubStart103024,
        ["103005"] = self.OnSubStart103005,
        ["103006"] = self.OnSubStart103006,
        ["103020"] = self.OnSubStart103020,
        ["103021"] = self.OnSubStart103021,
        ["103022"] = self.OnSubStart103022,
        ["103023"] = self.OnSubStart103023,
        ["103025"] = self.OnSubStart103025,
        ["103026"] = self.OnSubStart103026,
        ["103027"] = self.OnSubStart103027
    }
end

function Quest1030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["103001"] = self.OnSubFinish103001,
        ["103002"] = self.OnSubFinish103002,
        ["103003"] = self.OnSubFinish103003,
        ["103007"] = self.OnSubFinish103007,
        ["103010"] = self.OnSubFinish103010,
        ["103015"] = self.OnSubFinish103015,
        ["103004"] = self.OnSubFinish103004,
        ["103008"] = self.OnSubFinish103008,
        ["103009"] = self.OnSubFinish103009,
        ["103011"] = self.OnSubFinish103011,
        ["103012"] = self.OnSubFinish103012,
        ["103013"] = self.OnSubFinish103013,
        ["103014"] = self.OnSubFinish103014,
        ["103016"] = self.OnSubFinish103016,
        ["103017"] = self.OnSubFinish103017,
        ["103018"] = self.OnSubFinish103018,
        ["103019"] = self.OnSubFinish103019,
        ["103024"] = self.OnSubFinish103024,
        ["103005"] = self.OnSubFinish103005,
        ["103006"] = self.OnSubFinish103006,
        ["103020"] = self.OnSubFinish103020,
        ["103021"] = self.OnSubFinish103021,
        ["103022"] = self.OnSubFinish103022,
        ["103023"] = self.OnSubFinish103023,
        ["103025"] = self.OnSubFinish103025,
        ["103026"] = self.OnSubFinish103026,
        ["103027"] = self.OnSubFinish103027
    }
end

function Quest1030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["103018"] = self.OnSubFailed103018, ["103022"] = self.OnSubFailed103022}
end

function Quest1030:Start()
    print("Start")
end

function Quest1030:OnDestroy()
    print("OnDestroy")
end

function Quest1030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1030:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest1030:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest1030:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 103040 then
        print("RequestInteraction")
        self:ShowReadingDialog(101865)
    end
end

function Quest1030:OnSubStart103001(arg1)
    print("OnSubStart103001")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    actorMgr:CreateActorWithPos("Q1030Trigger6", "Actor/Gadget/Q1030Trigger6", 70900002, 0, sceneData:GetDummyPoint(20130, "Q103002_N1030").pos, sceneData:GetDummyPoint(20130, "Q103002_N1030").rot, true, false, 20130)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
    globalActor:DisablePaimonInProfilePage({20130})
end

function Quest1030:OnSubFinish103001(arg1)
    print("OnSubFinish103001")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 20130)
        globalActor:ResumePaimonInProfilePage({20130})
    end)
end

function Quest1030:OnSubStart103002(arg1)
    print("OnSubStart103002")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1049Data.id, 0)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias)
        questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
        actorMgr:CreateActorWithPos("Q1030Trigger5", "Actor/Gadget/Q1030Trigger5", 70900002, 0, sceneData:GetDummyPoint(20130, "Q103002_N1049").pos, sceneData:GetDummyPoint(20130, "Q103002_N1049").rot, true, false, 20130)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest1030:OnSubFinish103002(arg1)
    print("OnSubFinish103002")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1049Data.alias, 20130)
    end)
end

function Quest1030:OnSubStart103003(arg1)
    print("OnSubStart103003")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias)
        questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:CancelAvatarHPWatcher("103018")
        arg1_2:TryPauseCurAutoNarrator()
        arg1_2:ClearNarratorTask()
        arg1_2:FreeBlackScreenControl()
        arg1_2:SetBlackScreenValue(0)
        globalActor:StopAvatarMove()
        arg1_2:EnablePlayerInput(true)
    end)
end

function Quest1030:OnSubFinish103003(arg1)
    print("OnSubFinish103003")
end

function Quest1030:OnSubStart103007(arg1)
    print("OnSubStart103007")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 0, npcs.Npc1030Data.alias)
end

function Quest1030:OnSubFinish103007(arg1)
    print("OnSubFinish103007")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20129)
    end)
end

function Quest1030:OnSubStart103010(arg1)
    print("OnSubStart103010")
end

function Quest1030:OnSubFinish103010(arg1)
    print("OnSubFinish103010")
end

function Quest1030:OnSubStart103015(arg1)
    print("OnSubStart103015")
end

function Quest1030:OnSubFinish103015(arg1)
    print("OnSubFinish103015")
end

function Quest1030:OnSubStart103004(arg1)
    print("OnSubStart103004")
end

function Quest1030:OnSubFinish103004(arg1)
    print("OnSubFinish103004")
end

function Quest1030:OnSubStart103008(arg1)
    print("OnSubStart103008")
end

function Quest1030:OnSubFinish103008(arg1)
    print("OnSubFinish103008")
end

function Quest1030:OnSubStart103009(arg1)
    print("OnSubStart103009")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc1030Data.id, 0, npcs.Npc1030Data.alias)
end

function Quest1030:OnSubFinish103009(arg1)
    print("OnSubFinish103009")
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 20129)
end

function Quest1030:OnSubStart103011(arg1)
    print("OnSubStart103011")
    actorMgr:CreateActorWithPos("Q1030Trigger1", "Actor/Gadget/Q1030Trigger1", 70900002, 0, {x = 323.797, y = 200.14, z = 272.59}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20129)
end

function Quest1030:OnSubFinish103011(arg1)
    print("OnSubFinish103011")
end

function Quest1030:OnSubStart103012(arg1)
    print("OnSubStart103012")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1048Data.id, 0, npcs.Npc1048Data.alias)
end

function Quest1030:OnSubFinish103012(arg1)
    print("OnSubFinish103012")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20129)
end

function Quest1030:OnSubStart103013(arg1)
    print("OnSubStart103013")
end

function Quest1030:OnSubFinish103013(arg1)
    print("OnSubFinish103013")
end

function Quest1030:OnSubStart103014(arg1)
    print("OnSubStart103014")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc1048Data.id, 0, npcs.Npc1048Data.alias)
end

function Quest1030:OnSubFinish103014(arg1)
    print("OnSubFinish103014")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20129)
end

function Quest1030:OnSubStart103016(arg1)
    print("OnSubStart103016")
    actorMgr:CreateActorWithPos("Q1030Trigger2", "Actor/Gadget/Q1030Trigger2", 70900002, 0, {x = 325.196, y = 200.104, z = 70.611}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20129)
    self:CancelAvatarHPWatcher("103018")
end

function Quest1030:OnSubFinish103016(arg1)
    print("OnSubFinish103016")
end

function Quest1030:OnSubStart103017(arg1)
    print("OnSubStart103017")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.XiaoData.id, 0, npcs.XiaoData.alias)
end

function Quest1030:OnSubFinish103017(arg1)
    print("OnSubFinish103017")
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 20129)
end

function Quest1030:OnSubStart103018(arg1)
    print("OnSubStart103018")
    self:AddAvatarHPWatcher("103018", 10000026, 0, 0.2, -1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 103018)
    end)
end

function Quest1030:OnSubFinish103018(arg1)
    print("OnSubFinish103018")
    self:CancelAvatarHPWatcher("103018")
end

function Quest1030:OnSubFailed103018(arg1)
    print("OnSubFailed103018")
    self:CancelAvatarHPWatcher("103018")
end

function Quest1030:OnSubStart103019(arg1)
    print("OnSubStart103019")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.XiaoData.id, 0, npcs.XiaoData.alias)
end

function Quest1030:OnSubFinish103019(arg1)
    print("OnSubFinish103019")
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 20129)
    self:CancelAvatarHPWatcher("103018")
end

function Quest1030:OnSubStart103024(arg1)
    print("OnSubStart103024")
end

function Quest1030:OnSubFinish103024(arg1)
    print("OnSubFinish103024")
end

function Quest1030:OnSubStart103005(arg1)
    print("OnSubStart103005")
    actorMgr:CreateActorWithPos("Q1030Trigger3", "Actor/Gadget/Q1030Trigger3", 70900002, 0, {x = 326.519, y = 200.473, z = 724.649}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20129)
end

function Quest1030:OnSubFinish103005(arg1)
    print("OnSubFinish103005")
end

function Quest1030:OnSubStart103006(arg1)
    print("OnSubStart103006")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
    end, nil, nil, "", false, true)
end

function Quest1030:OnSubFinish103006(arg1)
    print("OnSubFinish103006")
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 20129)
end

function Quest1030:OnSubStart103020(arg1)
    print("OnSubStart103020")
    actorMgr:CreateActorWithPos("Q1030Trigger", "Actor/Gadget/Q1030Trigger", 70900002, 0, {x = -452.315, y = -1.932, z = -63.092}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20129)
    self:EnablePlayerInput(true)
    actorMgr:GetActor("1030"):SafeDestroyQuestNpc_MaleCond("Npc1026", "Npc1025", 20129)
end

function Quest1030:OnSubFinish103020(arg1)
    print("OnSubFinish103020")
end

function Quest1030:OnSubStart103021(arg1)
    print("OnSubStart103021")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
    end, nil, nil, "", false, true)
end

function Quest1030:OnSubFinish103021(arg1)
    print("OnSubFinish103021")
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 20129)
end

function Quest1030:OnSubStart103022(arg1)
    print("OnSubStart103022")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.PlayerKaicheA, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.AbyssKaiche, function(arg1)
                arg1:NarratorOnlyTask(datas.PlayerKaicheB, function(arg1)
                    actorUtils.FinishQuestID(false, 103022)
                end, "")
            end, 1030)
        end, "")

        arg1:TakeBlackScreenControl()
        arg1:CallDelay(2, function(arg1)
            arg1:SetBlackScreenValue(0.2)
        end)

        arg1:CallDelay(4, function(arg1)
            arg1:SetBlackScreenValue(0.4)
        end)

        arg1:CallDelay(6, function(arg1)
            arg1:SetBlackScreenValue(0.6)
        end)

        arg1:CallDelay(8, function(arg1)
            arg1:SetBlackScreenValue(0.8)
        end)

        arg1:CallDelay(10, function(arg1)
            arg1:SetBlackScreenValue(1)
        end)

        globalActor:AvatarMoveToRoute({
            sceneData:GetDummyPoint(20129, "Q103022_Walk1").pos,
            sceneData:GetDummyPoint(20129, "Q103022_Walk1").pos
        }, true, function()
            globalActor:AvatarMoveToRoute({
                sceneData:GetDummyPoint(20129, "Q103022_Walk2").pos,
                sceneData:GetDummyPoint(20129, "Q103022_Walk2").pos
            }, true, function()
                globalActor:AvatarMoveToRoute({
                    sceneData:GetDummyPoint(20129, "Q103022_Walk3").pos,
                    sceneData:GetDummyPoint(20129, "Q103022_Walk3").pos
                }, true)
            end)
        end)

        arg1:EnablePlayerInput(false)
    end)
end

function Quest1030:OnSubFinish103022(arg1)
    print("OnSubFinish103022")
    self:FreeBlackScreenControl()
    self:SetBlackScreenValue(0)
    globalActor:StopAvatarMove()
    self:EnablePlayerInput(true)
end

function Quest1030:OnSubFailed103022(arg1)
    print("OnSubFailed103022")
    self:FreeBlackScreenControl()
    self:SetBlackScreenValue(0)
    globalActor:StopAvatarMove()
    self:EnablePlayerInput(true)
end

function Quest1030:OnSubStart103023(arg1)
    print("OnSubStart103023")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
    end, nil, nil, "", false, true)
end

function Quest1030:OnSubFinish103023(arg1)
    print("OnSubFinish103023")
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 20129)
end

function Quest1030:OnSubStart103025(arg1)
    print("OnSubStart103025")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc_MaleCond(arg1, 1026, 1025, 0, 0)
    end)

    actorMgr:CreateActorWithPos("Q1030Trigger4", "Actor/Gadget/Q1030Trigger4", 70900002, 0, sceneData:GetDummyPoint(20129, "Q103025_MetaAvatar").pos, sceneData:GetDummyPoint(20129, "Q103025_MetaAvatar").rot, true, false, 20129)
end

function Quest1030:OnSubFinish103025(arg1)
    print("OnSubFinish103025")
end

function Quest1030:OnSubStart103026(arg1)
    print("OnSubStart103026")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 0, npcs.Npc1030Data.alias)
end

function Quest1030:OnSubFinish103026(arg1)
    print("OnSubFinish103026")
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 20129)
    self:TransmitPlayerByQuestId(103027, 1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Yelankaiche, nil, 1030)
    end)
end

function Quest1030:OnSubStart103027(arg1)
    print("OnSubStart103027")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    end)
end

function Quest1030:OnSubFinish103027(arg1)
    print("OnSubFinish103027")
    self:DestroyQuestNpcActor(npcs.XiaoData.alias, 20129)
    self:DestroyQuestNpcActor(npcs.Npc1048Data.alias, 20129)
    self:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20129)
end

return Quest1030

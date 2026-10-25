require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6027 = class("Quest6027", QuestActorProxy)
Quest6027.defaultAlias = "Quest6027"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest6027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest6027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602711"] = self.OnSubStart602711,
        ["602712"] = self.OnSubStart602712,
        ["602713"] = self.OnSubStart602713,
        ["602714"] = self.OnSubStart602714,
        ["602715"] = self.OnSubStart602715,
        ["602716"] = self.OnSubStart602716,
        ["602717"] = self.OnSubStart602717,
        ["602718"] = self.OnSubStart602718,
        ["602719"] = self.OnSubStart602719,
        ["602721"] = self.OnSubStart602721,
        ["602722"] = self.OnSubStart602722,
        ["602723"] = self.OnSubStart602723,
        ["602724"] = self.OnSubStart602724,
        ["602710"] = self.OnSubStart602710,
        ["602725"] = self.OnSubStart602725,
        ["602726"] = self.OnSubStart602726,
        ["602727"] = self.OnSubStart602727,
        ["602728"] = self.OnSubStart602728,
        ["602729"] = self.OnSubStart602729,
        ["602730"] = self.OnSubStart602730,
        ["602731"] = self.OnSubStart602731,
        ["602732"] = self.OnSubStart602732,
        ["602733"] = self.OnSubStart602733,
        ["602701"] = self.OnSubStart602701,
        ["602702"] = self.OnSubStart602702,
        ["602703"] = self.OnSubStart602703,
        ["602706"] = self.OnSubStart602706,
        ["602707"] = self.OnSubStart602707,
        ["602704"] = self.OnSubStart602704,
        ["602705"] = self.OnSubStart602705
    }
end

function Quest6027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602711"] = self.OnSubFinish602711,
        ["602712"] = self.OnSubFinish602712,
        ["602713"] = self.OnSubFinish602713,
        ["602714"] = self.OnSubFinish602714,
        ["602715"] = self.OnSubFinish602715,
        ["602716"] = self.OnSubFinish602716,
        ["602717"] = self.OnSubFinish602717,
        ["602718"] = self.OnSubFinish602718,
        ["602719"] = self.OnSubFinish602719,
        ["602721"] = self.OnSubFinish602721,
        ["602722"] = self.OnSubFinish602722,
        ["602723"] = self.OnSubFinish602723,
        ["602724"] = self.OnSubFinish602724,
        ["602710"] = self.OnSubFinish602710,
        ["602725"] = self.OnSubFinish602725,
        ["602726"] = self.OnSubFinish602726,
        ["602727"] = self.OnSubFinish602727,
        ["602728"] = self.OnSubFinish602728,
        ["602729"] = self.OnSubFinish602729,
        ["602730"] = self.OnSubFinish602730,
        ["602731"] = self.OnSubFinish602731,
        ["602732"] = self.OnSubFinish602732,
        ["602733"] = self.OnSubFinish602733,
        ["602701"] = self.OnSubFinish602701,
        ["602702"] = self.OnSubFinish602702,
        ["602703"] = self.OnSubFinish602703,
        ["602706"] = self.OnSubFinish602706,
        ["602707"] = self.OnSubFinish602707,
        ["602704"] = self.OnSubFinish602704,
        ["602705"] = self.OnSubFinish602705
    }
end

function Quest6027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["602703"] = self.OnSubFailed602703,
        ["602704"] = self.OnSubFailed602704,
        ["602705"] = self.OnSubFailed602705
    }
end

function Quest6027:Start()
    print("Start")
end

function Quest6027:OnDestroy()
    print("OnDestroy")
end

function Quest6027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6027:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    actorUtils.RemoveQuestAvatarNpcMark(1055, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(1313, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(16060, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(1312, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(1317, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(1310, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(16305, 6027)
    actorUtils.RemoveQuestAvatarNpcMark(16319, 6027)
end

function Quest6027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        globalActor:SpawnAttachInFixedAreaEx("602701", "AvatarItem_Columbina_Headdress", 10000904, nil, nil, nil, {20303}, true)
        globalActor:UnSpawnAttachInFixedArea(602702)
        globalActor:UnSpawnAttachInFixedArea(602703)
    elseif arg1 == 2 then
        globalActor:SpawnAttachInFixedAreaEx("602702", "AvatarItem_Columbina_Headdress02", 10000904, nil, nil, nil, {20303}, true)
        globalActor:UnSpawnAttachInFixedArea(602701)
        globalActor:UnSpawnAttachInFixedArea(602703)
    elseif arg1 == 3 then
        globalActor:SpawnAttachInFixedAreaEx("602703", "AvatarItem_Columbina_Headdress03", 10000904, nil, nil, nil, {20303}, true)
        globalActor:UnSpawnAttachInFixedArea(602702)
        globalActor:UnSpawnAttachInFixedArea(602701)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 602704)
    elseif arg1 == 5 then
        this:PlayerEnterDungeonWithData(2, 1294, 602703, 1, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 6 then
        this:PlayerEnterDungeonWithData(3, 1295, 602703, 2, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 7 then
        this:PlayerEnterDungeonWithData(4, 1296, 602703, 3, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 8 then
        this:PlayerEnterDungeonWithData(5, 10811, 602703, 4, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 9 then
        actorUtils.FinishQuestID(false, 602707)
    elseif arg1 == 10 then
        this:SetQuestVarByMainId(3, 1)
    elseif arg1 == 11 then
        this:SetQuestVarByMainId(3, 2)
    elseif arg1 == 12 then
        this:SetQuestVarByMainId(3, 3)
    elseif arg1 == 13 then
        this:SetQuestVarByMainId(16, 1)
    elseif arg1 == 14 then
        this:SetQuestVarByMainId(16, 2)
    elseif arg1 == 21 then
        this:SetQuestVarByMainId(21, 1)
    elseif arg1 == 22 then
        this:SetQuestVarByMainId(22, 1)
    elseif arg1 == 23 then
        this:SetQuestVarByMainId(23, 1)
    elseif arg1 == 24 then
        this:SetQuestVarByMainId(24, 1)
    elseif arg1 == 25 then
        this:SetQuestVarByMainId(25, 1)
    elseif arg1 == 26 then
        this:SetQuestVarByMainId(26, 1)
    elseif arg1 == 27 then
        this:SetQuestVarByMainId(27, 1)
    elseif arg1 == 28 then
        this:SetQuestVarByMainId(28, 1)
    elseif arg1 == 29 then
        this:SetQuestVarByMainId(29, 1)
    elseif arg1 == 30 then
        this:SetQuestVarByMainId(30, 1)
    elseif arg1 == 31 then
        this:SetQuestVarByMainId(31, 1)
    elseif arg1 == 32 then
        this:SetQuestVarByMainId(32, 1)
    elseif arg1 == 33 then
        this:SetQuestVarByMainId(33, 1)
    elseif arg1 == 34 then
        this:SetQuestVarByMainId(34, 1)
    elseif arg1 == 35 then
        this:SetQuestVarByMainId(35, 1)
    elseif arg1 == 36 then
        this:SetQuestVarByMainId(36, 1)
    elseif arg1 == 37 then
        this:SetQuestVarByMainId(37, 1)
    elseif arg1 == 38 then
        this:SetQuestVarByMainId(38, 1)
    end
end

function Quest6027:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 1 then
        this:SetQuestVarByMainId(14, 2)
    else
        if arg1.valueInt == 2 then
            actorUtils.AddQuestAvatarNpcMark(1316, 6027, false, "UI_AvatarIcon_Side_Nefer")
            actorUtils.AddQuestAvatarNpcMark(1080, 6027, false, "UI_AvatarIcon_Side_Arlecchino")
            actorUtils.AddQuestAvatarNpcMark(1317, 6027, false, "UI_AvatarIcon_Side_Jahoda")
        else
            if arg1.valueInt == 3 then
                actorUtils.AddQuestAvatarNpcMark(16343, 6027, false, "UI_AvatarIcon_Side_PlayerBoy")
            else
                if arg1.valueInt == 4 then
                    actorUtils.AddQuestAvatarNpcMark(16343, 6027, false, "UI_AvatarIcon_Side_PlayerGirl")
                else
                    if arg1.valueInt == 5 then
                        actorUtils.AddQuestAvatarNpcMark(1005, 6027, false, "UI_AvatarIcon_Side_Paimon")
                    else
                        if arg1.valueInt == 6 then
                            this:GetQuestNpcActor(npcs.Npc1025.alias, 6027):SetPlayerNpcEnergy()
                        else
                            if arg1.valueInt == 7 then
                                this:GetQuestNpcActor(npcs.Npc1026.alias, 6027):SetPlayerNpcEnergy()
                            else
                                if arg1.valueInt == 8 then
                                    actorUtils.AddQuestAvatarNpcMark(1018, 6027, false, "UI_AvatarIcon_Side_Albedo")
                                else
                                    if arg1.valueInt == 9 then
                                        actorUtils.AddQuestAvatarNpcMark(1065, 6027, false, "UI_AvatarIcon_Side_Wanderer")
                                    else
                                        if arg1.valueInt == 10 then
                                            actorUtils.AddQuestAvatarNpcMark(1320, 6027, false, "UI_AvatarIcon_Side_Durin")
                                        else
                                            if arg1.valueInt == 11 then
                                                this:SetQuestVarByMainId(12, 6)
                                            else
                                                if arg1.valueInt == 12 then
                                                    this:SetQuestVarByMainId(12, 5)
                                                else
                                                    if arg1.valueInt == 13 then
                                                        this:ActionSafeCall(function(arg1)
                                                            this:ShowTutorialDialog(2520)
                                                        end)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function Quest6027:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6027:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6027:OnSubStart602711(arg1)
    print("OnSubStart602711")
end

function Quest6027:OnSubFinish602711(arg1)
    print("OnSubFinish602711")
end

function Quest6027:OnSubStart602712(arg1)
    print("OnSubStart602712")
end

function Quest6027:OnSubFinish602712(arg1)
    print("OnSubFinish602712")
end

function Quest6027:OnSubStart602713(arg1)
    print("OnSubStart602713")
end

function Quest6027:OnSubFinish602713(arg1)
    print("OnSubFinish602713")
end

function Quest6027:OnSubStart602714(arg1)
    print("OnSubStart602714")
end

function Quest6027:OnSubFinish602714(arg1)
    print("OnSubFinish602714")
end

function Quest6027:OnSubStart602715(arg1)
    print("OnSubStart602715")
end

function Quest6027:OnSubFinish602715(arg1)
    print("OnSubFinish602715")
end

function Quest6027:OnSubStart602716(arg1)
    print("OnSubStart602716")
end

function Quest6027:OnSubFinish602716(arg1)
    print("OnSubFinish602716")
end

function Quest6027:OnSubStart602717(arg1)
    print("OnSubStart602717")
end

function Quest6027:OnSubFinish602717(arg1)
    print("OnSubFinish602717")
end

function Quest6027:OnSubStart602718(arg1)
    print("OnSubStart602718")
end

function Quest6027:OnSubFinish602718(arg1)
    print("OnSubFinish602718")
end

function Quest6027:OnSubStart602719(arg1)
    print("OnSubStart602719")
end

function Quest6027:OnSubFinish602719(arg1)
    print("OnSubFinish602719")
end

function Quest6027:OnSubStart602721(arg1)
    print("OnSubStart602721")
end

function Quest6027:OnSubFinish602721(arg1)
    print("OnSubFinish602721")
end

function Quest6027:OnSubStart602722(arg1)
    print("OnSubStart602722")
end

function Quest6027:OnSubFinish602722(arg1)
    print("OnSubFinish602722")
end

function Quest6027:OnSubStart602723(arg1)
    print("OnSubStart602723")
end

function Quest6027:OnSubFinish602723(arg1)
    print("OnSubFinish602723")
end

function Quest6027:OnSubStart602724(arg1)
    print("OnSubStart602724")
end

function Quest6027:OnSubFinish602724(arg1)
    print("OnSubFinish602724")
end

function Quest6027:OnSubStart602710(arg1)
    print("OnSubStart602710")
end

function Quest6027:OnSubFinish602710(arg1)
    print("OnSubFinish602710")
end

function Quest6027:OnSubStart602725(arg1)
    print("OnSubStart602725")
end

function Quest6027:OnSubFinish602725(arg1)
    print("OnSubFinish602725")
end

function Quest6027:OnSubStart602726(arg1)
    print("OnSubStart602726")
end

function Quest6027:OnSubFinish602726(arg1)
    print("OnSubFinish602726")
end

function Quest6027:OnSubStart602727(arg1)
    print("OnSubStart602727")
end

function Quest6027:OnSubFinish602727(arg1)
    print("OnSubFinish602727")
end

function Quest6027:OnSubStart602728(arg1)
    print("OnSubStart602728")
end

function Quest6027:OnSubFinish602728(arg1)
    print("OnSubFinish602728")
end

function Quest6027:OnSubStart602729(arg1)
    print("OnSubStart602729")
end

function Quest6027:OnSubFinish602729(arg1)
    print("OnSubFinish602729")
end

function Quest6027:OnSubStart602730(arg1)
    print("OnSubStart602730")
end

function Quest6027:OnSubFinish602730(arg1)
    print("OnSubFinish602730")
end

function Quest6027:OnSubStart602731(arg1)
    print("OnSubStart602731")
end

function Quest6027:OnSubFinish602731(arg1)
    print("OnSubFinish602731")
end

function Quest6027:OnSubStart602732(arg1)
    print("OnSubStart602732")
end

function Quest6027:OnSubFinish602732(arg1)
    print("OnSubFinish602732")
end

function Quest6027:OnSubStart602733(arg1)
    print("OnSubStart602733")
end

function Quest6027:OnSubFinish602733(arg1)
    print("OnSubFinish602733")
end

function Quest6027:OnSubStart602701(arg1)
    print("OnSubStart602701")
end

function Quest6027:OnSubFinish602701(arg1)
    print("OnSubFinish602701")
    this:SetNavigationByMainId(6027, true)
end

function Quest6027:OnSubStart602702(arg1)
    print("OnSubStart602702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1318.id, 0, 602702, 30, true)
    this:DeployStoryByQuest(110602700)
end

function Quest6027:OnSubFinish602702(arg1)
    print("OnSubFinish602702")
    this:NpcDestroyImmediately(20303, npcs.Npc1318.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_602701, nil)
    end)
end

function Quest6027:OnSubStart602703(arg1)
    print("OnSubStart602703")
    this:CreateQuestNpc(arg1, npcs.Npc16058.id, 0, false, 0)
    this:DeployStoryByQuest(110602700)
    this:DeployStoryByQuest(110602701)
    this:DeployStoryByQuest(110602702)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6027)
    actorUtils.BanUIByQuest(4, true, 6027)
    actorUtils.BanUIByQuest(16, true, 6027)
    actorUtils.BanUIByQuest(25, true, 6027)
    actorUtils.BanUIByQuest(27, true, 6027)
    actorUtils.AddQuestAvatarNpcMark(1055, 6027, false, "UI_AvatarIcon_Side_Dori")
    actorUtils.AddQuestAvatarNpcMark(1313, 6027, false, "UI_AvatarIcon_Side_Aino")
    actorUtils.AddQuestAvatarNpcMark(16060, 6027, false, "UI_AvatarIcon_Side_Flins")
    actorUtils.AddQuestAvatarNpcMark(1312, 6027, false, "UI_AvatarIcon_Side_Ineffa")
    actorUtils.AddQuestAvatarNpcMark(1317, 6027, false, "UI_AvatarIcon_Side_Jahoda")
    actorUtils.AddQuestAvatarNpcMark(1310, 6027, false, "UI_AvatarIcon_Side_Varka")
    actorUtils.AddQuestAvatarNpcMark(16305, 6027, false, "UI_AvatarIcon_Side_Lauma")
    actorUtils.AddQuestAvatarNpcMark(16319, 6027, false, "UI_AvatarIcon_Side_MarionetteNPC")
end

function Quest6027:OnSubFinish602703(arg1)
    print("OnSubFinish602703")
end

function Quest6027:OnSubFailed602703(arg1)
    print("OnSubFailed602703")
    this:CancelStoryByQuest(110602700)
    this:CancelStoryByQuest(110602701)
    this:CancelStoryByQuest(110602702)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6027)
    actorUtils.BanUIByQuest(4, false, 6027)
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(25, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
    this:ClearNarratorTask()
end

function Quest6027:OnSubStart602706(arg1)
    print("OnSubStart602706")
end

function Quest6027:OnSubFinish602706(arg1)
    print("OnSubFinish602706")
end

function Quest6027:OnSubStart602707(arg1)
    print("OnSubStart602707")
end

function Quest6027:OnSubFinish602707(arg1)
    print("OnSubFinish602707")
end

function Quest6027:OnSubStart602704(arg1)
    print("OnSubStart602704")
    this:DeployStoryByQuest(110602700)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6027)
    actorUtils.BanUIByQuest(4, true, 6027)
    actorUtils.BanUIByQuest(16, true, 6027)
    actorUtils.BanUIByQuest(25, true, 6027)
    actorUtils.BanUIByQuest(27, true, 6027)
end

function Quest6027:OnSubFinish602704(arg1)
    print("OnSubFinish602704")
end

function Quest6027:OnSubFailed602704(arg1)
    print("OnSubFailed602704")
    this:CancelStoryByQuest(110602700)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6027)
    actorUtils.BanUIByQuest(4, false, 6027)
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(25, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
    this:ClearNarratorTask()
end

function Quest6027:OnSubStart602705(arg1)
    print("OnSubStart602705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 602705, 35, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6027)
    actorUtils.BanUIByQuest(4, true, 6027)
    actorUtils.BanUIByQuest(16, true, 6027)
    actorUtils.BanUIByQuest(25, true, 6027)
    actorUtils.BanUIByQuest(27, true, 6027)
end

function Quest6027:OnSubFinish602705(arg1)
    print("OnSubFinish602705")
    this:NpcDestroyImmediately(20303, npcs.Npc16058.alias)
    this:NpcDestroyImmediately(20303, npcs.Paimon.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6027)
    actorUtils.BanUIByQuest(4, false, 6027)
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(25, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
end

function Quest6027:OnSubFailed602705(arg1)
    print("OnSubFailed602705")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6027)
    actorUtils.BanUIByQuest(4, false, 6027)
    actorUtils.BanUIByQuest(16, false, 6027)
    actorUtils.BanUIByQuest(25, false, 6027)
    actorUtils.BanUIByQuest(27, false, 6027)
end

return Quest6027

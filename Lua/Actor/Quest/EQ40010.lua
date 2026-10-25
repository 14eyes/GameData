require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40010 = class("Quest40010", QuestActorProxy)
Quest40010.defaultAlias = "Quest40010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001001"] = self.OnSubStart4001001,
        ["4001002"] = self.OnSubStart4001002,
        ["4001003"] = self.OnSubStart4001003,
        ["4001004"] = self.OnSubStart4001004,
        ["4001005"] = self.OnSubStart4001005,
        ["4001006"] = self.OnSubStart4001006,
        ["4001007"] = self.OnSubStart4001007,
        ["4001026"] = self.OnSubStart4001026,
        ["4001008"] = self.OnSubStart4001008,
        ["4001009"] = self.OnSubStart4001009,
        ["4001011"] = self.OnSubStart4001011,
        ["4001012"] = self.OnSubStart4001012,
        ["4001013"] = self.OnSubStart4001013,
        ["4001014"] = self.OnSubStart4001014,
        ["4001015"] = self.OnSubStart4001015,
        ["4001016"] = self.OnSubStart4001016,
        ["4001017"] = self.OnSubStart4001017,
        ["4001010"] = self.OnSubStart4001010,
        ["4001027"] = self.OnSubStart4001027,
        ["4001018"] = self.OnSubStart4001018,
        ["4001019"] = self.OnSubStart4001019,
        ["4001020"] = self.OnSubStart4001020,
        ["4001021"] = self.OnSubStart4001021,
        ["4001022"] = self.OnSubStart4001022,
        ["4001029"] = self.OnSubStart4001029,
        ["4001030"] = self.OnSubStart4001030,
        ["4001031"] = self.OnSubStart4001031,
        ["4001023"] = self.OnSubStart4001023,
        ["4001028"] = self.OnSubStart4001028,
        ["4001024"] = self.OnSubStart4001024,
        ["4001025"] = self.OnSubStart4001025
    }
end

function Quest40010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001001"] = self.OnSubFinish4001001,
        ["4001002"] = self.OnSubFinish4001002,
        ["4001003"] = self.OnSubFinish4001003,
        ["4001004"] = self.OnSubFinish4001004,
        ["4001005"] = self.OnSubFinish4001005,
        ["4001006"] = self.OnSubFinish4001006,
        ["4001007"] = self.OnSubFinish4001007,
        ["4001026"] = self.OnSubFinish4001026,
        ["4001008"] = self.OnSubFinish4001008,
        ["4001009"] = self.OnSubFinish4001009,
        ["4001011"] = self.OnSubFinish4001011,
        ["4001012"] = self.OnSubFinish4001012,
        ["4001013"] = self.OnSubFinish4001013,
        ["4001014"] = self.OnSubFinish4001014,
        ["4001015"] = self.OnSubFinish4001015,
        ["4001016"] = self.OnSubFinish4001016,
        ["4001017"] = self.OnSubFinish4001017,
        ["4001010"] = self.OnSubFinish4001010,
        ["4001027"] = self.OnSubFinish4001027,
        ["4001018"] = self.OnSubFinish4001018,
        ["4001019"] = self.OnSubFinish4001019,
        ["4001020"] = self.OnSubFinish4001020,
        ["4001021"] = self.OnSubFinish4001021,
        ["4001022"] = self.OnSubFinish4001022,
        ["4001029"] = self.OnSubFinish4001029,
        ["4001030"] = self.OnSubFinish4001030,
        ["4001031"] = self.OnSubFinish4001031,
        ["4001023"] = self.OnSubFinish4001023,
        ["4001028"] = self.OnSubFinish4001028,
        ["4001024"] = self.OnSubFinish4001024,
        ["4001025"] = self.OnSubFinish4001025
    }
end

function Quest40010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001001"] = self.OnSubFailed4001001,
        ["4001002"] = self.OnSubFailed4001002,
        ["4001003"] = self.OnSubFailed4001003,
        ["4001004"] = self.OnSubFailed4001004,
        ["4001005"] = self.OnSubFailed4001005,
        ["4001006"] = self.OnSubFailed4001006,
        ["4001007"] = self.OnSubFailed4001007,
        ["4001026"] = self.OnSubFailed4001026,
        ["4001008"] = self.OnSubFailed4001008,
        ["4001009"] = self.OnSubFailed4001009,
        ["4001011"] = self.OnSubFailed4001011,
        ["4001012"] = self.OnSubFailed4001012,
        ["4001013"] = self.OnSubFailed4001013,
        ["4001014"] = self.OnSubFailed4001014,
        ["4001015"] = self.OnSubFailed4001015,
        ["4001016"] = self.OnSubFailed4001016,
        ["4001017"] = self.OnSubFailed4001017,
        ["4001010"] = self.OnSubFailed4001010,
        ["4001027"] = self.OnSubFailed4001027,
        ["4001018"] = self.OnSubFailed4001018,
        ["4001019"] = self.OnSubFailed4001019,
        ["4001020"] = self.OnSubFailed4001020,
        ["4001021"] = self.OnSubFailed4001021,
        ["4001022"] = self.OnSubFailed4001022,
        ["4001029"] = self.OnSubFailed4001029,
        ["4001030"] = self.OnSubFailed4001030,
        ["4001031"] = self.OnSubFailed4001031,
        ["4001023"] = self.OnSubFailed4001023,
        ["4001028"] = self.OnSubFailed4001028,
        ["4001024"] = self.OnSubFailed4001024,
        ["4001025"] = self.OnSubFailed4001025
    }
end

function Quest40010:Start()
    print("Start")
end

function Quest40010:OnDestroy()
    print("OnDestroy")
end

function Quest40010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 4)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1435Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1433Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc143301Data.alias, 3)
end

function Quest40010:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local avatarPos = actorUtils.GetAvatarPos()
        self:PlayFreeCutscene({
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/CameraAni/Quest/Ca_Quest_MQ361_DragonFlyT_Test",
            startPosType = CutsceneInitPosType.FREE,
            startOffset = {x = avatarPos.x + 0, y = avatarPos.y - 20, z = avatarPos.z + 150},
            useTargetPos = true,
            targetPos = {x = 1942, y = 197, z = -1307},
            syncLoad = false
        }, self)
    elseif arg1 == 2 then
        self:EnableElementView(true)
    elseif arg1 == 3 then
        self:EnableElementView(false)
    elseif arg1 == 4 then
        self:ShowQuestPictureDialog(279)
    elseif arg1 == 5 then
        globalActor:ChangeDay24Time(15, true)
    end
end

function Quest40010:OnSubStart4001001(arg1)
    print("OnSubStart4001001")
    self:ActionSafeCall(function(arg1_2)
        if arg1_2:GetQuestVar(arg1.QuestConfigId, 0) == 0 then
            arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId1, function(arg1)
                arg1:SetQuestVarByMainId(0, 1)
            end)
        end
    end)
end

function Quest40010:OnSubFinish4001001(arg1)
    print("OnSubFinish4001001")
end

function Quest40010:OnSubFailed4001001(arg1)
    print("OnSubFailed4001001")
end

function Quest40010:OnSubStart4001002(arg1)
    print("OnSubStart4001002")
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
end

function Quest40010:OnSubFinish4001002(arg1)
    print("OnSubFinish4001002")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)
end

function Quest40010:OnSubFailed4001002(arg1)
    print("OnSubFailed4001002")
end

function Quest40010:OnSubStart4001003(arg1)
    print("OnSubStart4001003")
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    self:NotifyTo(npcs.Npc1409Data.alias, 1, true)
end

function Quest40010:OnSubFinish4001003(arg1)
    print("OnSubFinish4001003")
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest40010:OnSubFailed4001003(arg1)
    print("OnSubFailed4001003")
end

function Quest40010:OnSubStart4001004(arg1)
    print("OnSubStart4001004")
    self:CreateQuestNpc(arg1, npcs.Npc143501Data.id, 3)
    self:NotifyTo(npcs.Npc1435Data.alias, 1, true)
end

function Quest40010:OnSubFinish4001004(arg1)
    print("OnSubFinish4001004")
    self:SafeDestroyQuestNpc(npcs.Npc143501Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1435Data.alias, 0, true)
end

function Quest40010:OnSubFailed4001004(arg1)
    print("OnSubFailed4001004")
end

function Quest40010:OnSubStart4001005(arg1)
    print("OnSubStart4001005")
    self:CreateQuestNpc(arg1, npcs.Npc143301Data.id, 4)
    self:NotifyTo(npcs.Npc1433Data.alias, 1, true)
end

function Quest40010:OnSubFinish4001005(arg1)
    print("OnSubFinish4001005")
    self:SafeDestroyQuestNpc(npcs.Npc143301Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1433Data.alias, 0, true)
end

function Quest40010:OnSubFailed4001005(arg1)
    print("OnSubFailed4001005")
end

function Quest40010:OnSubStart4001006(arg1)
    print("OnSubStart4001006")
end

function Quest40010:OnSubFinish4001006(arg1)
    print("OnSubFinish4001006")
end

function Quest40010:OnSubFailed4001006(arg1)
    print("OnSubFailed4001006")
end

function Quest40010:OnSubStart4001007(arg1)
    print("OnSubStart4001007")
end

function Quest40010:OnSubFinish4001007(arg1)
    print("OnSubFinish4001007")
end

function Quest40010:OnSubFailed4001007(arg1)
    print("OnSubFailed4001007")
end

function Quest40010:OnSubStart4001008(arg1)
    print("OnSubStart4001008")
    self:CreateQuestNpc(arg1, npcs.LisaData.id, 1)
    self:GetQuestNpcActor(npcs.LisaData.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest40010:OnSubFinish4001008(arg1)
    print("OnSubFinish4001008")
end

function Quest40010:OnSubFailed4001008(arg1)
    print("OnSubFailed4001008")
end

function Quest40010:OnSubStart4001009(arg1)
    print("OnSubStart4001009")
    self:GetQuestNpcActor(npcs.LisaData.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest40010:OnSubFinish4001009(arg1)
    print("OnSubFinish4001009")
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
end

function Quest40010:OnSubFailed4001009(arg1)
    print("OnSubFailed4001009")
end

function Quest40010:OnSubStart4001010(arg1)
    print("OnSubStart4001010")
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest40010:OnSubFinish4001010(arg1)
    print("OnSubFinish4001010")
end

function Quest40010:OnSubFailed4001010(arg1)
    print("OnSubFailed4001010")
end

function Quest40010:OnSubStart4001011(arg1)
    print("OnSubStart4001011")
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 2)
    self:GetQuestNpcActor(npcs.BarbaraData.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.QinData.id, 3)
end

function Quest40010:OnSubFinish4001011(arg1)
    print("OnSubFinish4001011")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
end

function Quest40010:OnSubFailed4001011(arg1)
    print("OnSubFailed4001011")
end

function Quest40010:OnSubStart4001012(arg1)
    print("OnSubStart4001012")
end

function Quest40010:OnSubFinish4001012(arg1)
    print("OnSubFinish4001012")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId3)
    end)
end

function Quest40010:OnSubFailed4001012(arg1)
    print("OnSubFailed4001012")
end

function Quest40010:OnSubStart4001013(arg1)
    print("OnSubStart4001013")
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 2)
    self:GetQuestNpcActor(npcs.BarbaraData.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.QinData.id, 3)
    self:GetQuestNpcActor(npcs.QinData.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40010:OnSubFinish4001013(arg1)
    print("OnSubFinish4001013")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
end

function Quest40010:OnSubFailed4001013(arg1)
    print("OnSubFailed4001013")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
end

function Quest40010:OnSubStart4001014(arg1)
    print("OnSubStart4001014")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1220, true, nil, true, true, false)
end

function Quest40010:OnSubFinish4001014(arg1)
    print("OnSubFinish4001014")
end

function Quest40010:OnSubFailed4001014(arg1)
    print("OnSubFailed4001014")
end

function Quest40010:OnSubStart4001015(arg1)
    print("OnSubStart4001015")
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1220, true, nil, true, true, false)
end

function Quest40010:OnSubFinish4001015(arg1)
    print("OnSubFinish4001015")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40010:OnSubFailed4001015(arg1)
    print("OnSubFailed4001015")
end

function Quest40010:OnSubStart4001016(arg1)
    print("OnSubStart4001016")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest40010:OnSubFinish4001016(arg1)
    print("OnSubFinish4001016")
end

function Quest40010:OnSubFailed4001016(arg1)
    print("OnSubFailed4001016")
end

function Quest40010:OnSubStart4001017(arg1)
    print("OnSubStart4001017")
    if sceneData.currSceneID == 4 then
        self:PlayCutsceneIndex("4001016", function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
        end, nil, nil, true)
    else
        self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    end
end

function Quest40010:OnSubFinish4001017(arg1)
    print("OnSubFinish4001017")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
end

function Quest40010:OnSubFailed4001017(arg1)
    print("OnSubFailed4001017")
end

function Quest40010:OnSubStart4001018(arg1)
    print("OnSubStart4001018")
end

function Quest40010:OnSubFinish4001018(arg1)
    print("OnSubFinish4001018")
end

function Quest40010:OnSubFailed4001018(arg1)
    print("OnSubFailed4001018")
end

function Quest40010:OnSubStart4001019(arg1)
    print("OnSubStart4001019")
end

function Quest40010:OnSubFinish4001019(arg1)
    print("OnSubFinish4001019")
end

function Quest40010:OnSubFailed4001019(arg1)
    print("OnSubFailed4001019")
end

function Quest40010:OnSubStart4001020(arg1)
    print("OnSubStart4001020")
end

function Quest40010:OnSubFinish4001020(arg1)
    print("OnSubFinish4001020")
end

function Quest40010:OnSubFailed4001020(arg1)
    print("OnSubFailed4001020")
end

function Quest40010:OnSubStart4001021(arg1)
    print("OnSubStart4001021")
end

function Quest40010:OnSubFinish4001021(arg1)
    print("OnSubFinish4001021")
end

function Quest40010:OnSubFailed4001021(arg1)
    print("OnSubFailed4001021")
end

function Quest40010:OnSubStart4001022(arg1)
    print("OnSubStart4001022")
end

function Quest40010:OnSubFinish4001022(arg1)
    print("OnSubFinish4001022")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId6)
        end)
    end)
end

function Quest40010:OnSubFailed4001022(arg1)
    print("OnSubFailed4001022")
end

function Quest40010:OnSubStart4001023(arg1)
    print("OnSubStart4001023")
end

function Quest40010:OnSubFinish4001023(arg1)
    print("OnSubFinish4001023")
end

function Quest40010:OnSubFailed4001023(arg1)
    print("OnSubFailed4001023")
end

function Quest40010:OnSubStart4001024(arg1)
    print("OnSubStart4001024")
end

function Quest40010:OnSubFinish4001024(arg1)
    print("OnSubFinish4001024")
end

function Quest40010:OnSubFailed4001024(arg1)
    print("OnSubFailed4001024")
end

function Quest40010:OnSubStart4001025(arg1)
    print("OnSubStart4001025")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40010:OnSubFinish4001025(arg1)
    print("OnSubFinish4001025")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(814, function(arg1)
            actorUtils.ShowSummerTimeStagePage(1)
        end)
    end)
end

function Quest40010:OnSubFailed4001025(arg1)
    print("OnSubFailed4001025")
end

function Quest40010:OnSubStart4001026(arg1)
    print("OnSubStart4001026")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
        arg1_2:LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("40010"):TransmitPlayerByQuestId(4001026, 1)
        end)
    end)
end

function Quest40010:OnSubFinish4001026(arg1)
    print("OnSubFinish4001026")
end

function Quest40010:OnSubFailed4001026(arg1)
    print("OnSubFailed4001026")
end

function Quest40010:OnSubStart4001027(arg1)
    print("OnSubStart4001027")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40010:OnSubFinish4001027(arg1)
    print("OnSubFinish4001027")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(817)
    end)
end

function Quest40010:OnSubFailed4001027(arg1)
    print("OnSubFailed4001027")
end

function Quest40010:OnSubStart4001028(arg1)
    print("OnSubStart4001028")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(4001028, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest40010:OnSubFinish4001028(arg1)
    print("OnSubFinish4001028")
end

function Quest40010:OnSubFailed4001028(arg1)
    print("OnSubFailed4001028")
end

function Quest40010:OnSubStart4001029(arg1)
    print("OnSubStart4001029")
end

function Quest40010:OnSubFinish4001029(arg1)
    print("OnSubFinish4001029")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId4)
        end)
    end)
end

function Quest40010:OnSubFailed4001029(arg1)
    print("OnSubFailed4001029")
end

function Quest40010:OnSubStart4001030(arg1)
    print("OnSubStart4001030")
end

function Quest40010:OnSubFinish4001030(arg1)
    print("OnSubFinish4001030")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId5)
        end)
    end)
end

function Quest40010:OnSubFailed4001030(arg1)
    print("OnSubFailed4001030")
end

function Quest40010:OnSubStart4001031(arg1)
    print("OnSubStart4001031")
end

function Quest40010:OnSubFinish4001031(arg1)
    print("OnSubFinish4001031")
end

function Quest40010:OnSubFailed4001031(arg1)
    print("OnSubFailed4001031")
end

return Quest40010

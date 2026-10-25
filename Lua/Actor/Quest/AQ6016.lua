require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6016 = class("Quest6016", QuestActorProxy)
Quest6016.defaultAlias = "Quest6016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601601"] = self.OnSubStart601601,
        ["601602"] = self.OnSubStart601602,
        ["601603"] = self.OnSubStart601603,
        ["601604"] = self.OnSubStart601604,
        ["601605"] = self.OnSubStart601605,
        ["601606"] = self.OnSubStart601606,
        ["601607"] = self.OnSubStart601607,
        ["601608"] = self.OnSubStart601608,
        ["601609"] = self.OnSubStart601609,
        ["601623"] = self.OnSubStart601623,
        ["601610"] = self.OnSubStart601610,
        ["601611"] = self.OnSubStart601611,
        ["601624"] = self.OnSubStart601624,
        ["601612"] = self.OnSubStart601612,
        ["601632"] = self.OnSubStart601632,
        ["601613"] = self.OnSubStart601613,
        ["601625"] = self.OnSubStart601625,
        ["601614"] = self.OnSubStart601614,
        ["601633"] = self.OnSubStart601633,
        ["601615"] = self.OnSubStart601615,
        ["601616"] = self.OnSubStart601616,
        ["601617"] = self.OnSubStart601617,
        ["601618"] = self.OnSubStart601618,
        ["601628"] = self.OnSubStart601628,
        ["601619"] = self.OnSubStart601619,
        ["601620"] = self.OnSubStart601620,
        ["601629"] = self.OnSubStart601629,
        ["601621"] = self.OnSubStart601621,
        ["601626"] = self.OnSubStart601626,
        ["601627"] = self.OnSubStart601627,
        ["601630"] = self.OnSubStart601630,
        ["601631"] = self.OnSubStart601631,
        ["601622"] = self.OnSubStart601622
    }
end

function Quest6016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601601"] = self.OnSubFinish601601,
        ["601602"] = self.OnSubFinish601602,
        ["601603"] = self.OnSubFinish601603,
        ["601604"] = self.OnSubFinish601604,
        ["601605"] = self.OnSubFinish601605,
        ["601606"] = self.OnSubFinish601606,
        ["601607"] = self.OnSubFinish601607,
        ["601608"] = self.OnSubFinish601608,
        ["601609"] = self.OnSubFinish601609,
        ["601623"] = self.OnSubFinish601623,
        ["601610"] = self.OnSubFinish601610,
        ["601611"] = self.OnSubFinish601611,
        ["601624"] = self.OnSubFinish601624,
        ["601612"] = self.OnSubFinish601612,
        ["601632"] = self.OnSubFinish601632,
        ["601613"] = self.OnSubFinish601613,
        ["601625"] = self.OnSubFinish601625,
        ["601614"] = self.OnSubFinish601614,
        ["601633"] = self.OnSubFinish601633,
        ["601615"] = self.OnSubFinish601615,
        ["601616"] = self.OnSubFinish601616,
        ["601617"] = self.OnSubFinish601617,
        ["601618"] = self.OnSubFinish601618,
        ["601628"] = self.OnSubFinish601628,
        ["601619"] = self.OnSubFinish601619,
        ["601620"] = self.OnSubFinish601620,
        ["601629"] = self.OnSubFinish601629,
        ["601621"] = self.OnSubFinish601621,
        ["601626"] = self.OnSubFinish601626,
        ["601627"] = self.OnSubFinish601627,
        ["601630"] = self.OnSubFinish601630,
        ["601631"] = self.OnSubFinish601631,
        ["601622"] = self.OnSubFinish601622
    }
end

function Quest6016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601602"] = self.OnSubFailed601602,
        ["601603"] = self.OnSubFailed601603,
        ["601604"] = self.OnSubFailed601604,
        ["601605"] = self.OnSubFailed601605,
        ["601606"] = self.OnSubFailed601606,
        ["601607"] = self.OnSubFailed601607,
        ["601608"] = self.OnSubFailed601608,
        ["601609"] = self.OnSubFailed601609,
        ["601610"] = self.OnSubFailed601610,
        ["601611"] = self.OnSubFailed601611,
        ["601612"] = self.OnSubFailed601612,
        ["601613"] = self.OnSubFailed601613,
        ["601614"] = self.OnSubFailed601614,
        ["601615"] = self.OnSubFailed601615,
        ["601616"] = self.OnSubFailed601616,
        ["601617"] = self.OnSubFailed601617,
        ["601618"] = self.OnSubFailed601618,
        ["601619"] = self.OnSubFailed601619,
        ["601620"] = self.OnSubFailed601620,
        ["601629"] = self.OnSubFailed601629,
        ["601621"] = self.OnSubFailed601621,
        ["601627"] = self.OnSubFailed601627,
        ["601630"] = self.OnSubFailed601630,
        ["601631"] = self.OnSubFailed601631
    }
end

function Quest6016:Start()
    print("Start")
end

function Quest6016:OnDestroy()
    print("OnDestroy")
end

function Quest6016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6016:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601621TransmitTrigger")
    this:ActorDestroy("Q6016BOSSTimeline")
    this:ActorDestroy("Q601617Cs")
    this:ActorDestroy("Q601601TransmitTrigger")
end

function Quest6016:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueString == "InBossJail" then
        this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSFlight")
        this:CallDelayByQuest("601601", 0.5, function(arg1)
            this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSSJail")
        end)
    else
        if arg1.valueString == "OutBossJail" then
            this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSJail")
            this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSSFlight")
            actorUtils.SetOperationCardProgress(7)
        else
            if arg1.valueString == "SGV_6016_PhaseOneEnd" then
                actorUtils.FinishQuestID(false, 601618)
            else
                if arg1.valueString == "SGV_6016_JailKaiche01" then
                    this:CallDelayByQuest("JailKaiche01", 1, function(arg1)
                        this:QuestNarratorTask(datas.JailKaiche01, nil)
                    end)
                else
                    if arg1.valueString == "SGV_6016_JailKaiche02" then
                        this:CallDelayByQuest("JailKaiche02", 1, function(arg1)
                            this:QuestNarratorTask(datas.JailKaiche02, nil)
                        end)
                    else
                        if arg1.valueString == "SGV_6016_JailKaiche03" then
                            this:CallDelayByQuest("JailKaiche03", 1, function(arg1)
                                this:QuestNarratorTask(datas.JailKaiche03, nil)
                            end)
                        else
                            if arg1.valueString == "SGV_6016_JailKaiche04" then
                                this:CallDelayByQuest("JailKaiche04", 1, function(arg1)
                                    this:QuestNarratorTask(datas.Q6016BossKaiche, nil)
                                    actorUtils.SetOperationCardProgress(7)
                                end)
                            end
                        end
                    end
                end
            end
        end
    end
end

function Quest6016:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 601623 then
        actorUtils.FinishQuestID(false, 601623)
    elseif arg1 == 601624 then
        actorUtils.FinishQuestID(false, 601624)
    elseif arg1 == 601625 then
        actorUtils.FinishQuestID(false, 601625)
    elseif arg1 == 60169902 then
        actorUtils.SetOperationCardProgress(2)
    elseif arg1 == 60169903 then
        actorUtils.SetOperationCardProgress(3)
    elseif arg1 == 60169904 then
        actorUtils.SetOperationCardProgress(4)
    elseif arg1 == 60169905 then
        actorUtils.SetOperationCardProgress(5)
    elseif arg1 == 60169906 then
        actorUtils.SetOperationCardProgress(6)
    elseif arg1 == 60169907 then
        actorUtils.SetOperationCardProgress(7)
    elseif arg1 == 60169908 then
        actorUtils.SetOperationCardProgress(8)
    elseif arg1 == 60169909 then
        actorUtils.SetOperationCardProgress(9)
    elseif arg1 == 60169910 then
        actorUtils.SetOperationCardProgress(10)
    elseif arg1 == 601628 then
        actorUtils.FinishQuestID(false, 601628)
    elseif arg1 == 60169901 then
        actorUtils.SetOperationCardProgress(1)
    end
end

function Quest6016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6016:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6016:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6016:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6016:OnSubStart601601(arg1)
    print("OnSubStart601601")
    this:RecycleAllRes()
end

function Quest6016:OnSubFinish601601(arg1)
    print("OnSubFinish601601")
    this:SetNavigationByMainId(6016, true)
end

function Quest6016:OnSubStart601602(arg1)
    print("OnSubStart601602")
    this:NpcCreateWithNoBlackData(601602, 1, npcs.Npc1319.id, 0, 10, 601602, datas.NoBlackDataNormal)
end

function Quest6016:OnSubFinish601602(arg1)
    print("OnSubFinish601602")
    this:NpcDestroyImmediately(20321, npcs.Npc1319.alias)
    actorUtils.SetOperationCardProgress(1)
end

function Quest6016:OnSubFailed601602(arg1)
    print("OnSubFailed601602")
    this:DestroyQuestNpcActor(npcs.Npc1319.alias, 20321)
end

function Quest6016:OnSubStart601603(arg1)
    print("OnSubStart601603")
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
end

function Quest6016:OnSubFinish601603(arg1)
    print("OnSubFinish601603")
end

function Quest6016:OnSubFailed601603(arg1)
    print("OnSubFailed601603")
    this:DestroyQuestNpcActor(npcs.Npc1314.alias, 20321)
end

function Quest6016:OnSubStart601604(arg1)
    print("OnSubStart601604")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 5, 601604)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6016):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6016):DoFreeStyle(1130, true, nil, true, true, false, false)
end

function Quest6016:OnSubFinish601604(arg1)
    print("OnSubFinish601604")
end

function Quest6016:OnSubFailed601604(arg1)
    print("OnSubFailed601604")
    this:DestroyNpcTrigger("Q601604N1316Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20321)
    this:DestroyQuestNpcActor(npcs.Npc1315.alias, 20321)
end

function Quest6016:OnSubStart601605(arg1)
    print("OnSubStart601605")
    this:NpcCreateWithNpcTrigger(npcs.Npc1018.id, 0, 5, 601605)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6016):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
end

function Quest6016:OnSubFinish601605(arg1)
    print("OnSubFinish601605")
end

function Quest6016:OnSubFailed601605(arg1)
    print("OnSubFailed601605")
    this:DestroyNpcTrigger("Q601605N1018Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1018.alias, 20321)
    this:DestroyQuestNpcActor(npcs.Npc1320.alias, 20321)
end

function Quest6016:OnSubStart601606(arg1)
    print("OnSubStart601606")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
    this:CallDelayByQuest("601606", 2, function(arg1)
        actorUtils.SetOperationCardProgress(2)
    end)
end

function Quest6016:OnSubFinish601606(arg1)
    print("OnSubFinish601606")
end

function Quest6016:OnSubFailed601606(arg1)
    print("OnSubFailed601606")
    this:UnCallDelayByQuest("601606")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601607(arg1)
    print("OnSubStart601607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601607, 0, 50, 1, npcs.Npc1314.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
    actorUtils.SetOperationCardProgress(2)
end

function Quest6016:OnSubFinish601607(arg1)
    print("OnSubFinish601607")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 20321)
    this:NpcDestroyImmediately(20321, npcs.Npc1018.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc1320.alias)
end

function Quest6016:OnSubFailed601607(arg1)
    print("OnSubFailed601607")
    this:DestroyNpcTrigger("Q601607N1314Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1314.alias, 20321)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601608(arg1)
    print("OnSubStart601608")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
    actorUtils.SetOperationCardProgress(3)
end

function Quest6016:OnSubFinish601608(arg1)
    print("OnSubFinish601608")
end

function Quest6016:OnSubFailed601608(arg1)
    print("OnSubFailed601608")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601609(arg1)
    print("OnSubStart601609")
    this:NpcCreateWithNoBlackData(601609, 0, npcs.Npc1314.id, 0, 50, 601609, datas.NoBlackDataNormal)
end

function Quest6016:OnSubFinish601609(arg1)
    print("OnSubFinish601609")
    this:NpcDestroyImmediately(20321, npcs.Npc1314.alias)
end

function Quest6016:OnSubFailed601609(arg1)
    print("OnSubFailed601609")
    this:DestroyQuestNpcActor(npcs.Npc1314.alias, 20321)
end

function Quest6016:OnSubStart601623(arg1)
    print("OnSubStart601623")
end

function Quest6016:OnSubFinish601623(arg1)
    print("OnSubFinish601623")
end

function Quest6016:OnSubStart601610(arg1)
    print("OnSubStart601610")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
    this:CallDelayByQuest("601610", 2, function(arg1)
        actorUtils.SetOperationCardProgress(4)
    end)
end

function Quest6016:OnSubFinish601610(arg1)
    print("OnSubFinish601610")
end

function Quest6016:OnSubFailed601610(arg1)
    print("OnSubFailed601610")
    this:UnCallDelayByQuest("601610")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601611(arg1)
    print("OnSubStart601611")
    this:NpcCreateWithNoBlackData(601611, 0, npcs.Npc1316.id, 0, 50, 601611, datas.NoBlackDataNormal)
end

function Quest6016:OnSubFinish601611(arg1)
    print("OnSubFinish601611")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 20321)
end

function Quest6016:OnSubFailed601611(arg1)
    print("OnSubFailed601611")
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20321)
end

function Quest6016:OnSubStart601624(arg1)
    print("OnSubStart601624")
end

function Quest6016:OnSubFinish601624(arg1)
    print("OnSubFinish601624")
end

function Quest6016:OnSubStart601612(arg1)
    print("OnSubStart601612")
    actorUtils.SetOperationCardProgress(4)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
end

function Quest6016:OnSubFinish601612(arg1)
    print("OnSubFinish601612")
end

function Quest6016:OnSubFailed601612(arg1)
    print("OnSubFailed601612")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601632(arg1)
    print("OnSubStart601632")
end

function Quest6016:OnSubFinish601632(arg1)
    print("OnSubFinish601632")
    actorUtils.SetOperationCardProgress(5)
end

function Quest6016:OnSubStart601613(arg1)
    print("OnSubStart601613")
    this:NpcCreateWithNoBlackData(601613, 0, npcs.Npc1018.id, 0, 50, 601613, datas.NoBlackDataNormal)
end

function Quest6016:OnSubFinish601613(arg1)
    print("OnSubFinish601613")
    this:NpcDestroyImmediately(20321, npcs.Npc1018.alias)
end

function Quest6016:OnSubFailed601613(arg1)
    print("OnSubFailed601613")
    this:DestroyQuestNpcActor(npcs.Npc1018.alias, 20321)
end

function Quest6016:OnSubStart601625(arg1)
    print("OnSubStart601625")
end

function Quest6016:OnSubFinish601625(arg1)
    print("OnSubFinish601625")
end

function Quest6016:OnSubStart601614(arg1)
    print("OnSubStart601614")
    actorUtils.SetOperationCardProgress(5)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
end

function Quest6016:OnSubFinish601614(arg1)
    print("OnSubFinish601614")
end

function Quest6016:OnSubFailed601614(arg1)
    print("OnSubFailed601614")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601633(arg1)
    print("OnSubStart601633")
end

function Quest6016:OnSubFinish601633(arg1)
    print("OnSubFinish601633")
    actorUtils.SetOperationCardProgress(6)
end

function Quest6016:OnSubStart601615(arg1)
    print("OnSubStart601615")
    this:NpcCreateWithNoBlack(npcs.Npc12695.id, 0, 30, 601615, true, 601615)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest6016")
    actorUtils.SetOperationCardProgress(6)
end

function Quest6016:OnSubFinish601615(arg1)
    print("OnSubFinish601615")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubFailed601615(arg1)
    print("OnSubFailed601615")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest6016")
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubStart601616(arg1)
    print("OnSubStart601616")
    this:RecycleAllRes()
    if sceneData.currSceneID == 20321 then
        this:PlayerEnterDungeonWithData(11, 1269, 601615, 1, datas.EnterDungeonWithSaving, nil, nil)
    end

    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubFinish601616(arg1)
    print("OnSubFinish601616")
end

function Quest6016:OnSubFailed601616(arg1)
    print("OnSubFailed601616")
end

function Quest6016:OnSubStart601617(arg1)
    print("OnSubStart601617")
    actorMgr:CreateActorWithPos("Q601617Cs", "Actor/Gadget/Q601617Cs", 70900002, 0, points._Q601617CsPoint_.pos, points._Q601617CsPoint_.rot, true, false, 20289)
end

function Quest6016:OnSubFinish601617(arg1)
    print("OnSubFinish601617")
    this:ActorDestroy("Q601617Cs")
end

function Quest6016:OnSubFailed601617(arg1)
    print("OnSubFailed601617")
    this:ActorDestroy("Q601617Cs")
end

function Quest6016:OnSubStart601618(arg1)
    print("OnSubStart601618")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSFlight")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSJail")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSSFlight")
    actorUtils.SetOperationCardProgress(6)
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601618(arg1)
    print("OnSubFinish601618")
    this:UnCallDelayByQuest("601601")
    this:UnCallDelayByQuest("JailKaiche01")
    this:UnCallDelayByQuest("JailKaiche02")
    this:UnCallDelayByQuest("JailKaiche03")
    this:UnCallDelayByQuest("JailKaiche04")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest6016:OnSubFailed601618(arg1)
    print("OnSubFailed601618")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSFlight")
    actorUtils.HideOperationCard()
    this:UnCallDelayByQuest("601601")
    this:UnCallDelayByQuest("JailKaiche01")
    this:UnCallDelayByQuest("JailKaiche02")
    this:UnCallDelayByQuest("JailKaiche03")
    this:UnCallDelayByQuest("JailKaiche04")
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601628(arg1)
    print("OnSubStart601628")
end

function Quest6016:OnSubFinish601628(arg1)
    print("OnSubFinish601628")
end

function Quest6016:OnSubStart601619(arg1)
    print("OnSubStart601619")
    this:NpcCreateWithNoBlackData(601619, 0, npcs.Npc16020.id, 0, 50, 601619, datas.NoBlackDataNormal)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSSFlight")
    actorUtils.SetOperationCardProgress(7)
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601619(arg1)
    print("OnSubFinish601619")
    this:NpcDestroyImmediately(20289, npcs.Npc16020.alias)
    actorUtils.HideOperationCard()
end

function Quest6016:OnSubFailed601619(arg1)
    print("OnSubFailed601619")
    this:DestroyQuestNpcActor(npcs.Npc16020.alias, 20289)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSFlight")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601620(arg1)
    print("OnSubStart601620")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSSFlight")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601620(arg1)
    print("OnSubFinish601620")
end

function Quest6016:OnSubFailed601620(arg1)
    print("OnSubFailed601620")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601629(arg1)
    print("OnSubStart601629")
    actorMgr:CreateActorWithPos("Q6016BOSSTimeline", "Actor/Gadget/Q6016BOSSTimeline", 70900002, 0, points._Q6016BOSSTimelinePoint_.pos, points._Q6016BOSSTimelinePoint_.rot, true, false, 20289)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601629(arg1)
    print("OnSubFinish601629")
end

function Quest6016:OnSubFailed601629(arg1)
    print("OnSubFailed601629")
    this:ActorDestroy("Q6016BOSSTimeline")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601621(arg1)
    print("OnSubStart601621")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    if sceneData.currSceneID == 20289 then
        this:PlayCutsceneIndex(60162102, nil, nil, nil, false)
        actorUtils.BanUIByQuest(16, true, 6016)
        actorUtils.BanUIByQuest(27, true, 6016)
    end
end

function Quest6016:OnSubFinish601621(arg1)
    print("OnSubFinish601621")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubFailed601621(arg1)
    print("OnSubFailed601621")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601626(arg1)
    print("OnSubStart601626")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubFinish601626(arg1)
    print("OnSubFinish601626")
end

function Quest6016:OnSubStart601627(arg1)
    print("OnSubStart601627")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601627(arg1)
    print("OnSubFinish601627")
end

function Quest6016:OnSubFailed601627(arg1)
    print("OnSubFailed601627")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601630(arg1)
    print("OnSubStart601630")
    actorMgr:CreateActorWithPos("Q6016BOSSTimeline", "Actor/Gadget/Q6016BOSSTimeline", 70900002, 0, points._Q6016BOSSTimelinePoint_.pos, points._Q6016BOSSTimelinePoint_.rot, true, false, 20289)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6016)
    actorUtils.BanUIByQuest(27, true, 6016)
end

function Quest6016:OnSubFinish601630(arg1)
    print("OnSubFinish601630")
end

function Quest6016:OnSubFailed601630(arg1)
    print("OnSubFailed601630")
    this:ActorDestroy("Q6016BOSSTimeline")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601631(arg1)
    print("OnSubStart601631")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    if sceneData.currSceneID == 20289 then
        this:PlayCutsceneIndex(60163102, nil, nil, nil, false)
        actorUtils.BanUIByQuest(16, true, 6016)
        actorUtils.BanUIByQuest(27, true, 6016)
    end
end

function Quest6016:OnSubFinish601631(arg1)
    print("OnSubFinish601631")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubFailed601631(arg1)
    print("OnSubFailed601631")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubStart601622(arg1)
    print("OnSubStart601622")
    if sceneData.currSceneID == 20289 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitWithBlack, nil, nil, nil)
    end

    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.HideOperationCard()
    actorUtils.BanUIByQuest(16, false, 6016)
    actorUtils.BanUIByQuest(27, false, 6016)
end

function Quest6016:OnSubFinish601622(arg1)
    print("OnSubFinish601622")
end

return Quest6016

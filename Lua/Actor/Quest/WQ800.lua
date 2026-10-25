require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest800 = class("Quest800", QuestActorProxy)
Quest800.defaultAlias = "Quest800"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest800:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["80001"] = self.OnSubStart80001,
        ["80002"] = self.OnSubStart80002,
        ["80003"] = self.OnSubStart80003,
        ["80004"] = self.OnSubStart80004,
        ["80005"] = self.OnSubStart80005,
        ["80006"] = self.OnSubStart80006,
        ["80007"] = self.OnSubStart80007,
        ["80008"] = self.OnSubStart80008,
        ["80009"] = self.OnSubStart80009,
        ["80010"] = self.OnSubStart80010,
        ["80011"] = self.OnSubStart80011,
        ["80012"] = self.OnSubStart80012,
        ["80013"] = self.OnSubStart80013,
        ["80014"] = self.OnSubStart80014,
        ["80015"] = self.OnSubStart80015,
        ["80016"] = self.OnSubStart80016,
        ["80017"] = self.OnSubStart80017,
        ["80018"] = self.OnSubStart80018,
        ["80019"] = self.OnSubStart80019,
        ["80020"] = self.OnSubStart80020,
        ["80021"] = self.OnSubStart80021,
        ["80022"] = self.OnSubStart80022,
        ["80023"] = self.OnSubStart80023,
        ["80024"] = self.OnSubStart80024,
        ["80025"] = self.OnSubStart80025,
        ["80026"] = self.OnSubStart80026,
        ["80027"] = self.OnSubStart80027,
        ["80028"] = self.OnSubStart80028,
        ["80029"] = self.OnSubStart80029,
        ["80030"] = self.OnSubStart80030,
        ["80031"] = self.OnSubStart80031,
        ["80032"] = self.OnSubStart80032,
        ["80033"] = self.OnSubStart80033,
        ["80034"] = self.OnSubStart80034,
        ["80035"] = self.OnSubStart80035,
        ["80036"] = self.OnSubStart80036,
        ["80037"] = self.OnSubStart80037,
        ["80038"] = self.OnSubStart80038,
        ["80039"] = self.OnSubStart80039,
        ["80040"] = self.OnSubStart80040,
        ["80041"] = self.OnSubStart80041,
        ["80042"] = self.OnSubStart80042,
        ["80043"] = self.OnSubStart80043,
        ["80044"] = self.OnSubStart80044,
        ["80045"] = self.OnSubStart80045,
        ["80046"] = self.OnSubStart80046,
        ["80047"] = self.OnSubStart80047,
        ["80048"] = self.OnSubStart80048,
        ["80049"] = self.OnSubStart80049,
        ["80050"] = self.OnSubStart80050,
        ["80051"] = self.OnSubStart80051,
        ["80052"] = self.OnSubStart80052,
        ["80053"] = self.OnSubStart80053,
        ["80054"] = self.OnSubStart80054,
        ["80055"] = self.OnSubStart80055,
        ["80056"] = self.OnSubStart80056,
        ["80057"] = self.OnSubStart80057,
        ["80058"] = self.OnSubStart80058,
        ["80059"] = self.OnSubStart80059,
        ["80060"] = self.OnSubStart80060,
        ["80061"] = self.OnSubStart80061,
        ["80062"] = self.OnSubStart80062,
        ["80063"] = self.OnSubStart80063,
        ["80064"] = self.OnSubStart80064,
        ["80065"] = self.OnSubStart80065,
        ["80066"] = self.OnSubStart80066,
        ["80067"] = self.OnSubStart80067,
        ["80068"] = self.OnSubStart80068,
        ["80069"] = self.OnSubStart80069,
        ["80070"] = self.OnSubStart80070
    }
end

function Quest800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["80001"] = self.OnSubFinish80001,
        ["80002"] = self.OnSubFinish80002,
        ["80003"] = self.OnSubFinish80003,
        ["80004"] = self.OnSubFinish80004,
        ["80005"] = self.OnSubFinish80005,
        ["80006"] = self.OnSubFinish80006,
        ["80007"] = self.OnSubFinish80007,
        ["80008"] = self.OnSubFinish80008,
        ["80009"] = self.OnSubFinish80009,
        ["80010"] = self.OnSubFinish80010,
        ["80011"] = self.OnSubFinish80011,
        ["80012"] = self.OnSubFinish80012,
        ["80013"] = self.OnSubFinish80013,
        ["80014"] = self.OnSubFinish80014,
        ["80015"] = self.OnSubFinish80015,
        ["80016"] = self.OnSubFinish80016,
        ["80017"] = self.OnSubFinish80017,
        ["80018"] = self.OnSubFinish80018,
        ["80019"] = self.OnSubFinish80019,
        ["80020"] = self.OnSubFinish80020,
        ["80021"] = self.OnSubFinish80021,
        ["80022"] = self.OnSubFinish80022,
        ["80023"] = self.OnSubFinish80023,
        ["80024"] = self.OnSubFinish80024,
        ["80025"] = self.OnSubFinish80025,
        ["80026"] = self.OnSubFinish80026,
        ["80027"] = self.OnSubFinish80027,
        ["80028"] = self.OnSubFinish80028,
        ["80029"] = self.OnSubFinish80029,
        ["80030"] = self.OnSubFinish80030,
        ["80031"] = self.OnSubFinish80031,
        ["80032"] = self.OnSubFinish80032,
        ["80033"] = self.OnSubFinish80033,
        ["80034"] = self.OnSubFinish80034,
        ["80035"] = self.OnSubFinish80035,
        ["80036"] = self.OnSubFinish80036,
        ["80037"] = self.OnSubFinish80037,
        ["80038"] = self.OnSubFinish80038,
        ["80039"] = self.OnSubFinish80039,
        ["80040"] = self.OnSubFinish80040,
        ["80041"] = self.OnSubFinish80041,
        ["80042"] = self.OnSubFinish80042,
        ["80043"] = self.OnSubFinish80043,
        ["80044"] = self.OnSubFinish80044,
        ["80045"] = self.OnSubFinish80045,
        ["80046"] = self.OnSubFinish80046,
        ["80047"] = self.OnSubFinish80047,
        ["80048"] = self.OnSubFinish80048,
        ["80049"] = self.OnSubFinish80049,
        ["80050"] = self.OnSubFinish80050,
        ["80051"] = self.OnSubFinish80051,
        ["80052"] = self.OnSubFinish80052,
        ["80053"] = self.OnSubFinish80053,
        ["80054"] = self.OnSubFinish80054,
        ["80055"] = self.OnSubFinish80055,
        ["80056"] = self.OnSubFinish80056,
        ["80057"] = self.OnSubFinish80057,
        ["80058"] = self.OnSubFinish80058,
        ["80059"] = self.OnSubFinish80059,
        ["80060"] = self.OnSubFinish80060,
        ["80061"] = self.OnSubFinish80061,
        ["80062"] = self.OnSubFinish80062,
        ["80063"] = self.OnSubFinish80063,
        ["80064"] = self.OnSubFinish80064,
        ["80065"] = self.OnSubFinish80065,
        ["80066"] = self.OnSubFinish80066,
        ["80067"] = self.OnSubFinish80067,
        ["80068"] = self.OnSubFinish80068,
        ["80069"] = self.OnSubFinish80069,
        ["80070"] = self.OnSubFinish80070
    }
end

function Quest800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest800:Start()
    print("Start")
end

function Quest800:OnDestroy()
    print("OnDestroy")
end

function Quest800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest800:CreateRepeatableNpcShowDisappearTrigger(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg1, arg2, arg3, arg4, arg5, arg6)
end

function Quest800:DestroyRepeatableNpcShowDisappearTrigger(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg1, arg2)
end

function Quest800:OnSubStart80001(arg1)
    print("OnSubStart80001")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
    this:CreateLocalGadget(70710703, "1", sceneData:GetDummyPoint(3, "Q101317ZL").pos, sceneData:GetDummyPoint(3, "Q101317ZL").rot, 3, nil, nil, 0, false)
    this:SetLocalGadgetState(70710703, "1", 201)
end

function Quest800:OnSubFinish80001(arg1)
    print("OnSubFinish80001")
    this:GetQuestNpcActor(npcs.AmborData.alias):DestroyWithDitherEx(false, 2)
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest800:OnSubStart80002(arg1)
    print("OnSubStart80002")
    this:SetLocalGadgetState(70710703, "1", 202)
    if sceneData.currSceneID == 1075 then
        this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 0, nil, nil)
    end
end

function Quest800:OnSubFinish80002(arg1)
    print("OnSubFinish80002")
end

function Quest800:OnSubStart80003(arg1)
    print("OnSubStart80003")
end

function Quest800:OnSubFinish80003(arg1)
    print("OnSubFinish80003")
end

function Quest800:OnSubStart80004(arg1)
    print("OnSubStart80004")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
    this:SpawnGadget(arg1, 0, 1)
end

function Quest800:OnSubFinish80004(arg1)
    print("OnSubFinish80004")
end

function Quest800:OnSubStart80005(arg1)
    print("OnSubStart80005")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80005(arg1)
    print("OnSubFinish80005")
end

function Quest800:OnSubStart80006(arg1)
    print("OnSubStart80006")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80006(arg1)
    print("OnSubFinish80006")
end

function Quest800:OnSubStart80007(arg1)
    print("OnSubStart80007")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80007(arg1)
    print("OnSubFinish80007")
end

function Quest800:OnSubStart80008(arg1)
    print("OnSubStart80008")
end

function Quest800:OnSubFinish80008(arg1)
    print("OnSubFinish80008")
end

function Quest800:OnSubStart80009(arg1)
    print("OnSubStart80009")
end

function Quest800:OnSubFinish80009(arg1)
    print("OnSubFinish80009")
end

function Quest800:OnSubStart80010(arg1)
    print("OnSubStart80010")
end

function Quest800:OnSubFinish80010(arg1)
    print("OnSubFinish80010")
end

function Quest800:OnSubStart80011(arg1)
    print("OnSubStart80011")
end

function Quest800:OnSubFinish80011(arg1)
    print("OnSubFinish80011")
end

function Quest800:OnSubStart80012(arg1)
    print("OnSubStart80012")
end

function Quest800:OnSubFinish80012(arg1)
    print("OnSubFinish80012")
end

function Quest800:OnSubStart80013(arg1)
    print("OnSubStart80013")
end

function Quest800:OnSubFinish80013(arg1)
    print("OnSubFinish80013")
end

function Quest800:OnSubStart80014(arg1)
    print("OnSubStart80014")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80014(arg1)
    print("OnSubFinish80014")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest800:OnSubStart80015(arg1)
    print("OnSubStart80015")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
end

function Quest800:OnSubFinish80015(arg1)
    print("OnSubFinish80015")
end

function Quest800:OnSubStart80016(arg1)
    print("OnSubStart80016")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80016(arg1)
    print("OnSubFinish80016")
end

function Quest800:OnSubStart80017(arg1)
    print("OnSubStart80017")
end

function Quest800:OnSubFinish80017(arg1)
    print("OnSubFinish80017")
end

function Quest800:OnSubStart80018(arg1)
    print("OnSubStart80018")
end

function Quest800:OnSubFinish80018(arg1)
    print("OnSubFinish80018")
end

function Quest800:OnSubStart80019(arg1)
    print("OnSubStart80019")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
end

function Quest800:OnSubFinish80019(arg1)
    print("OnSubFinish80019")
end

function Quest800:OnSubStart80020(arg1)
    print("OnSubStart80020")
end

function Quest800:OnSubFinish80020(arg1)
    print("OnSubFinish80020")
end

function Quest800:OnSubStart80021(arg1)
    print("OnSubStart80021")
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
end

function Quest800:OnSubFinish80021(arg1)
    print("OnSubFinish80021")
end

function Quest800:OnSubStart80022(arg1)
    print("OnSubStart80022")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
    end)
end

function Quest800:OnSubFinish80022(arg1)
    print("OnSubFinish80022")
end

function Quest800:OnSubStart80023(arg1)
    print("OnSubStart80023")
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0, false, 0)
end

function Quest800:OnSubFinish80023(arg1)
    print("OnSubFinish80023")
end

function Quest800:OnSubStart80024(arg1)
    print("OnSubStart80024")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
    end)
end

function Quest800:OnSubFinish80024(arg1)
    print("OnSubFinish80024")
end

function Quest800:OnSubStart80025(arg1)
    print("OnSubStart80025")
    this:CreateQuestNpc(arg1, npcs.Npc4184Data.id, 0, false, 0)
    local actor = actorMgr:GetActor("800")
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc4184Data.alias):BurrowMove({x = 2113.95, y = 205.842, z = -1032.984}, {x = 0.0, y = 118.979, z = 0.0}, function(arg1)
            actor:CallDelay(2, function(arg1)
                arg1:GetQuestNpcActor(npcs.Npc4184Data.alias):AdvWalkToRouteTask(datas.NewTable, 1, false, function(arg1)
                    actor:CallDelay(2, function(arg1)
                        arg1:GetQuestNpcActor(npcs.Npc4184Data.alias):AdvWalkToRouteTask(datas.NewTable1, 1, true, function(arg1)
                            actor:CallDelay(2, function(arg1)
                                arg1:GetQuestNpcActor(npcs.Npc4184Data.alias):DestroyWithDisappear(false)
                            end)
                        end)
                    end)
                end)
            end)
        end)
    end)
end

function Quest800:OnSubFinish80025(arg1)
    print("OnSubFinish80025")
end

function Quest800:OnSubStart80026(arg1)
    print("OnSubStart80026")
    this:CreateQuestNpc(arg1, npcs.Npc4184Data.id, 0, false, 0)
end

function Quest800:OnSubFinish80026(arg1)
    print("OnSubFinish80026")
end

function Quest800:OnSubStart80027(arg1)
    print("OnSubStart80027")
end

function Quest800:OnSubFinish80027(arg1)
    print("OnSubFinish80027")
end

function Quest800:OnSubStart80028(arg1)
    print("OnSubStart80028")
end

function Quest800:OnSubFinish80028(arg1)
    print("OnSubFinish80028")
end

function Quest800:OnSubStart80029(arg1)
    print("OnSubStart80029")
end

function Quest800:OnSubFinish80029(arg1)
    print("OnSubFinish80029")
end

function Quest800:OnSubStart80030(arg1)
    print("OnSubStart80030")
end

function Quest800:OnSubFinish80030(arg1)
    print("OnSubFinish80030")
end

function Quest800:OnSubStart80031(arg1)
    print("OnSubStart80031")
end

function Quest800:OnSubFinish80031(arg1)
    print("OnSubFinish80031")
end

function Quest800:OnSubStart80032(arg1)
    print("OnSubStart80032")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
end

function Quest800:OnSubFinish80032(arg1)
    print("OnSubFinish80032")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest800:OnSubStart80033(arg1)
    print("OnSubStart80033")
end

function Quest800:OnSubFinish80033(arg1)
    print("OnSubFinish80033")
end

function Quest800:OnSubStart80034(arg1)
    print("OnSubStart80034")
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
end

function Quest800:OnSubFinish80034(arg1)
    print("OnSubFinish80034")
end

function Quest800:OnSubStart80035(arg1)
    print("OnSubStart80035")
    this:GetQuestNpcActor(npcs.WendyData.alias):ChangeNpcAvatarPendantVisual(true)
end

function Quest800:OnSubFinish80035(arg1)
    print("OnSubFinish80035")
    this:GetQuestNpcActor(npcs.WendyData.alias):ChangeNpcAvatarPendantVisual(false)
end

function Quest800:OnSubStart80036(arg1)
    print("OnSubStart80036")
    this:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1038Data.alias):SitOnChair(0)
end

function Quest800:OnSubFinish80036(arg1)
    print("OnSubFinish80036")
    this:GetQuestNpcActor(npcs.Npc1038Data.alias):StandFromChairEx(0)
end

function Quest800:OnSubStart80037(arg1)
    print("OnSubStart80037")
end

function Quest800:OnSubFinish80037(arg1)
    print("OnSubFinish80037")
end

function Quest800:OnSubStart80038(arg1)
    print("OnSubStart80038")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
end

function Quest800:OnSubFinish80038(arg1)
    print("OnSubFinish80038")
end

function Quest800:OnSubStart80039(arg1)
    print("OnSubStart80039")
end

function Quest800:OnSubFinish80039(arg1)
    print("OnSubFinish80039")
end

function Quest800:OnSubStart80040(arg1)
    print("OnSubStart80040")
    actorMgr:CreateActorWithPos("Q80003_TriggerIn_Test", "Actor/Gadget/Q80003_TriggerIn_Test", 70900002, 0, {x = -31.581, y = 131.892, z = -31.793}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
    print("\228\187\187\229\138\161\229\188\128\229\167\139")
    this:SafeCallDelay(1, function(arg1)
        print("SafeCallDelay\226\128\148\226\128\1481111")
    end)

    this:SafeCallDelay(5, function(arg1)
        print("SafeCallDelay\226\128\148\226\128\1485555")
    end)

    this:SafeCallDelay(10, function(arg1)
        print("SafeCallDelay\226\128\148\226\128\14810101010")
    end)

    this:AddPostEnterSceneCall(1075, function(arg1)
        print("\229\155\158\232\176\131\229\138\160\232\189\189\229\174\140\230\136\144")
    end)
end

function Quest800:OnSubFinish80040(arg1)
    print("OnSubFinish80040")
end

function Quest800:OnSubStart80041(arg1)
    print("OnSubStart80041")
    this:LevelReadySafeCall(function(arg1)
        print("\229\174\140\230\136\144LevelReadySafeCall")
    end)
end

function Quest800:OnSubFinish80041(arg1)
    print("OnSubFinish80041")
end

function Quest800:OnSubStart80042(arg1)
    print("OnSubStart80042")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
end

function Quest800:OnSubFinish80042(arg1)
    print("OnSubFinish80042")
end

function Quest800:OnSubStart80043(arg1)
    print("OnSubStart80043")
end

function Quest800:OnSubFinish80043(arg1)
    print("OnSubFinish80043")
end

function Quest800:OnSubStart80044(arg1)
    print("OnSubStart80044")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    actorMgr:CreateActorWithPos("Q800Trigger", "Actor/Gadget/Q800Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "TalkTestNPC1").pos, sceneData:GetDummyPoint(3, "TalkTestNPC1").rot, true, false, 3)
end

function Quest800:OnSubFinish80044(arg1)
    print("OnSubFinish80044")
end

function Quest800:OnSubStart80045(arg1)
    print("OnSubStart80045")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest800:OnSubFinish80045(arg1)
    print("OnSubFinish80045")
end

function Quest800:OnSubStart80046(arg1)
    print("OnSubStart80046")
end

function Quest800:OnSubFinish80046(arg1)
    print("OnSubFinish80046")
end

function Quest800:OnSubStart80047(arg1)
    print("OnSubStart80047")
end

function Quest800:OnSubFinish80047(arg1)
    print("OnSubFinish80047")
end

function Quest800:OnSubStart80048(arg1)
    print("OnSubStart80048")
end

function Quest800:OnSubFinish80048(arg1)
    print("OnSubFinish80048")
end

function Quest800:OnSubStart80049(arg1)
    print("OnSubStart80049")
end

function Quest800:OnSubFinish80049(arg1)
    print("OnSubFinish80049")
end

function Quest800:OnSubStart80050(arg1)
    print("OnSubStart80050")
end

function Quest800:OnSubFinish80050(arg1)
    print("OnSubFinish80050")
end

function Quest800:OnSubStart80051(arg1)
    print("OnSubStart80051")
end

function Quest800:OnSubFinish80051(arg1)
    print("OnSubFinish80051")
end

function Quest800:OnSubStart80052(arg1)
    print("OnSubStart80052")
end

function Quest800:OnSubFinish80052(arg1)
    print("OnSubFinish80052")
end

function Quest800:OnSubStart80053(arg1)
    print("OnSubStart80053")
end

function Quest800:OnSubFinish80053(arg1)
    print("OnSubFinish80053")
end

function Quest800:OnSubStart80054(arg1)
    print("OnSubStart80054")
    this:CreateQuestNpc(arg1, npcs.Npc5304Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1025Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1025Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc1400Data.id, 0)
    local v = self:GetQuestNpcActor(npcs.Npc1400Data.alias)
    self:CallDelay(5, function()
        v:AdvRunToRoute({
            {x = 3475.018, y = 424.886, z = 4965.202},
            {x = 3475.018, y = 410.708, z = 4967.802},
            {x = 3475.018, y = 424.886, z = 4968.602}
        }, nil, nil, nil, true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc5317Data.id, 0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc5317Data.alias)
end

function Quest800:OnSubFinish80054(arg1)
    print("OnSubFinish80054")
end

function Quest800:OnSubStart80055(arg1)
    print("OnSubStart80055")
end

function Quest800:OnSubFinish80055(arg1)
    print("OnSubFinish80055")
end

function Quest800:OnSubStart80056(arg1)
    print("OnSubStart80056")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.DilucData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.GaiaSPData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1066Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0, false, 0)
end

function Quest800:OnSubFinish80056(arg1)
    print("OnSubFinish80056")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.DilucData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaSPData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1066Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
end

function Quest800:OnSubStart80057(arg1)
    print("OnSubStart80057")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest800:OnSubFinish80057(arg1)
    print("OnSubFinish80057")
end

function Quest800:OnSubStart80058(arg1)
    print("OnSubStart80058")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
end

function Quest800:OnSubFinish80058(arg1)
    print("OnSubFinish80058")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest800:OnSubStart80059(arg1)
    print("OnSubStart80059")
end

function Quest800:OnSubFinish80059(arg1)
    print("OnSubFinish80059")
end

function Quest800:OnSubStart80060(arg1)
    print("OnSubStart80060")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
end

function Quest800:OnSubFinish80060(arg1)
    print("OnSubFinish80060")
end

function Quest800:OnSubStart80061(arg1)
    print("OnSubStart80061")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
end

function Quest800:OnSubFinish80061(arg1)
    print("OnSubFinish80061")
end

function Quest800:OnSubStart80062(arg1)
    print("OnSubStart80062")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0, false, 0)
end

function Quest800:OnSubFinish80062(arg1)
    print("OnSubFinish80062")
end

function Quest800:OnSubStart80063(arg1)
    print("OnSubStart80063")
end

function Quest800:OnSubFinish80063(arg1)
    print("OnSubFinish80063")
end

function Quest800:OnSubStart80064(arg1)
    print("OnSubStart80064")
end

function Quest800:OnSubFinish80064(arg1)
    print("OnSubFinish80064")
end

function Quest800:OnSubStart80065(arg1)
    print("OnSubStart80065")
end

function Quest800:OnSubFinish80065(arg1)
    print("OnSubFinish80065")
end

function Quest800:OnSubStart80066(arg1)
    print("OnSubStart80066")
end

function Quest800:OnSubFinish80066(arg1)
    print("OnSubFinish80066")
end

function Quest800:OnSubStart80067(arg1)
    print("OnSubStart80067")
end

function Quest800:OnSubFinish80067(arg1)
    print("OnSubFinish80067")
end

function Quest800:OnSubStart80068(arg1)
    print("OnSubStart80068")
end

function Quest800:OnSubFinish80068(arg1)
    print("OnSubFinish80068")
end

function Quest800:OnSubStart80069(arg1)
    print("OnSubStart80069")
    this:CreateRepeatableNpcShowDisappearTrigger("Q800testRepeatTrigger", 80069, npcs.PaimonData.id, 0, 6, 10)
end

function Quest800:OnSubFinish80069(arg1)
    print("OnSubFinish80069")
end

function Quest800:OnSubStart80070(arg1)
    print("OnSubStart80070")
end

function Quest800:OnSubFinish80070(arg1)
    print("OnSubFinish80070")
    this:DestroyRepeatableNpcShowDisappearTrigger("Q800testRepeatTrigger", true)
end

return Quest800

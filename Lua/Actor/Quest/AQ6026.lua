require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6026 = class("Quest6026", QuestActorProxy)
Quest6026.defaultAlias = "Quest6026"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6026:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602601"] = self.OnSubStart602601,
        ["602602"] = self.OnSubStart602602,
        ["602603"] = self.OnSubStart602603,
        ["602604"] = self.OnSubStart602604,
        ["602622"] = self.OnSubStart602622,
        ["602605"] = self.OnSubStart602605,
        ["602618"] = self.OnSubStart602618,
        ["602619"] = self.OnSubStart602619,
        ["602615"] = self.OnSubStart602615,
        ["602616"] = self.OnSubStart602616,
        ["602606"] = self.OnSubStart602606,
        ["602623"] = self.OnSubStart602623,
        ["602607"] = self.OnSubStart602607,
        ["602620"] = self.OnSubStart602620,
        ["602608"] = self.OnSubStart602608,
        ["602621"] = self.OnSubStart602621,
        ["602609"] = self.OnSubStart602609,
        ["602610"] = self.OnSubStart602610,
        ["602624"] = self.OnSubStart602624,
        ["602611"] = self.OnSubStart602611,
        ["602612"] = self.OnSubStart602612,
        ["602617"] = self.OnSubStart602617,
        ["602625"] = self.OnSubStart602625,
        ["602626"] = self.OnSubStart602626,
        ["602627"] = self.OnSubStart602627,
        ["602628"] = self.OnSubStart602628,
        ["602629"] = self.OnSubStart602629,
        ["602630"] = self.OnSubStart602630,
        ["602637"] = self.OnSubStart602637,
        ["602632"] = self.OnSubStart602632,
        ["602633"] = self.OnSubStart602633,
        ["602638"] = self.OnSubStart602638,
        ["602634"] = self.OnSubStart602634,
        ["602635"] = self.OnSubStart602635,
        ["602631"] = self.OnSubStart602631,
        ["602636"] = self.OnSubStart602636,
        ["602613"] = self.OnSubStart602613,
        ["602614"] = self.OnSubStart602614
    }
end

function Quest6026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602601"] = self.OnSubFinish602601,
        ["602602"] = self.OnSubFinish602602,
        ["602603"] = self.OnSubFinish602603,
        ["602604"] = self.OnSubFinish602604,
        ["602622"] = self.OnSubFinish602622,
        ["602605"] = self.OnSubFinish602605,
        ["602618"] = self.OnSubFinish602618,
        ["602619"] = self.OnSubFinish602619,
        ["602615"] = self.OnSubFinish602615,
        ["602616"] = self.OnSubFinish602616,
        ["602606"] = self.OnSubFinish602606,
        ["602623"] = self.OnSubFinish602623,
        ["602607"] = self.OnSubFinish602607,
        ["602620"] = self.OnSubFinish602620,
        ["602608"] = self.OnSubFinish602608,
        ["602621"] = self.OnSubFinish602621,
        ["602609"] = self.OnSubFinish602609,
        ["602610"] = self.OnSubFinish602610,
        ["602624"] = self.OnSubFinish602624,
        ["602611"] = self.OnSubFinish602611,
        ["602612"] = self.OnSubFinish602612,
        ["602617"] = self.OnSubFinish602617,
        ["602625"] = self.OnSubFinish602625,
        ["602626"] = self.OnSubFinish602626,
        ["602627"] = self.OnSubFinish602627,
        ["602628"] = self.OnSubFinish602628,
        ["602629"] = self.OnSubFinish602629,
        ["602630"] = self.OnSubFinish602630,
        ["602637"] = self.OnSubFinish602637,
        ["602632"] = self.OnSubFinish602632,
        ["602633"] = self.OnSubFinish602633,
        ["602638"] = self.OnSubFinish602638,
        ["602634"] = self.OnSubFinish602634,
        ["602635"] = self.OnSubFinish602635,
        ["602631"] = self.OnSubFinish602631,
        ["602636"] = self.OnSubFinish602636,
        ["602613"] = self.OnSubFinish602613,
        ["602614"] = self.OnSubFinish602614
    }
end

function Quest6026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["602605"] = self.OnSubFailed602605,
        ["602615"] = self.OnSubFailed602615,
        ["602616"] = self.OnSubFailed602616,
        ["602607"] = self.OnSubFailed602607,
        ["602620"] = self.OnSubFailed602620,
        ["602617"] = self.OnSubFailed602617,
        ["602626"] = self.OnSubFailed602626,
        ["602628"] = self.OnSubFailed602628,
        ["602630"] = self.OnSubFailed602630,
        ["602633"] = self.OnSubFailed602633,
        ["602635"] = self.OnSubFailed602635,
        ["602636"] = self.OnSubFailed602636
    }
end

function Quest6026:Start()
    print("Start")
end

function Quest6026:OnDestroy()
    print("OnDestroy")
end

function Quest6026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6026:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest6026:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 602611 then
        this:RequestInteractionWithCameraLookTrigger("Q602617T602611", 602617, npcs.Npc16039.alias, 20320, {x = 1902.101, y = 244.276, z = 9240.48}, 60, 602611, true, false)
    else
        if arg1.valueInt == 602636 then
            this:RequestInteractionWithCameraLookTrigger("Q602626T602636", 602626, npcs.Npc16039.alias, 20320, {x = 1886.997, y = 235.217, z = 9290.26}, 60, 602636, true, false)
        else
            if arg1.valueInt == 602637 then
                this:RequestInteractionWithCameraLookTrigger("Q602626T602637", 602626, npcs.Npc16039.alias, 20320, {x = 1886.997, y = 235.217, z = 9290.26}, 60, 602637, true, false)
            else
                if arg1.valueInt == 602617 then
                    this:RequestInteractionWithCameraLookTrigger("Q602633T602617", 602633, npcs.Npc16039.alias, 20320, {x = 1936.49, y = 247.837, z = 9389.489}, 60, 602617, true, false)
                else
                    if arg1.valueInt == 602632 then
                        this:RequestInteractionWithCameraLookTrigger("Q602633T602632", 602633, npcs.Npc16041.alias, 20320, {x = 1936.49, y = 247.837, z = 9389.489}, 60, 602632, true, false)
                    else
                        if arg1.valueInt == 602639 then
                            this:RequestInteractionWithCameraLookTrigger("Q602626T602639", 602626, npcs.Npc16039.alias, 20320, {x = 1886.997, y = 235.217, z = 9290.26}, 60, 602639, true, false)
                        end
                    end
                end
            end
        end
    end
end

function Quest6026:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6026:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6026:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest6026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6026:OnMainPaused(arg1) end

function Quest6026:OnSubStart602601(arg1)
    print("OnSubStart602601")
    this:CreateNpcWithCameraLookTrigger("Q602601NB16041", 602601, npcs.Npc16041_1.id, 0, 40, 602601, true)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6026):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6026):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1316.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7143.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 6026):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 6026):SitOnChair(0, true)
end

function Quest6026:OnSubFinish602601(arg1)
    print("OnSubFinish602601")
    this:SafeDestroyQuestNpc(npcs.Npc16041_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc7143.alias, 1205)
end

function Quest6026:OnSubStart602602(arg1)
    print("OnSubStart602602")
    this:CreateNpcWithCameraLookTrigger("Q602602NB1315", 602602, npcs.Npc1315.id, 0, 30, 602602, true)
end

function Quest6026:OnSubFinish602602(arg1)
    print("OnSubFinish602602")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:TransmitPlayerWithQuestIdByData(602602, 1, datas.TransmitDataSN01, nil, nil, nil)
end

function Quest6026:OnSubStart602603(arg1)
    print("OnSubStart602603")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16039.id, 0, 602603, 30, true)
end

function Quest6026:OnSubFinish602603(arg1)
    print("OnSubFinish602603")
    this:SafeDestroyQuestNpc(npcs.Npc16039.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_Black_6026, 1, nil, nil, nil)
end

function Quest6026:OnSubStart602604(arg1)
    print("OnSubStart602604")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16186.id, 0, 602604, 20, true)
end

function Quest6026:OnSubFinish602604(arg1)
    print("OnSubFinish602604")
    this:SafeDestroyQuestNpc(npcs.Npc16186.alias, 3)
    this:PlayerEnterDungeonWithData(1820, 1299, 602604, 1, datas.PlayerEnterDungeonDataSN02, nil, nil)
end

function Quest6026:OnSubStart602622(arg1)
    print("OnSubStart602622")
    this:RecycleAllRes()
end

function Quest6026:OnSubFinish602622(arg1)
    print("OnSubFinish602622")
end

function Quest6026:OnSubStart602605(arg1)
    print("OnSubStart602605")
    this:CreateQuestNpc(arg1, npcs.Npc15969.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15969.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15414.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7096.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7106.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7106.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15407.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7099.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7101.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7101.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7105.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6026):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(602605, 0, 20, 1, npcs.Npc16186.id)
    this:DeployStoryByQuest(110602622)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6026)
    actorUtils.BanUIByQuest(4, true, 6026)
    actorUtils.BanUIByQuest(16, true, 6026)
    actorUtils.BanUIByQuest(27, true, 6026)
end

function Quest6026:OnSubFinish602605(arg1)
    print("OnSubFinish602605")
    this:SafeDestroyQuestNpc(npcs.Npc16186.alias, 20326)
end

function Quest6026:OnSubFailed602605(arg1)
    print("OnSubFailed602605")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubStart602618(arg1)
    print("OnSubStart602618")
    actorMgr:CreateActorWithPos("Q602618Trigger", "Actor/Gadget/Q602618Trigger", 70900002, 0, points._Q602618TriggerPoint_.pos, points._Q602618TriggerPoint_.rot, true, false, 20326)
end

function Quest6026:OnSubFinish602618(arg1)
    print("OnSubFinish602618")
end

function Quest6026:OnSubStart602619(arg1)
    print("OnSubStart602619")
    actorMgr:CreateActorWithPos("Q602619Trigger", "Actor/Gadget/Q602619Trigger", 70900002, 0, points._Q602619TriggerPoint_.pos, points._Q602619TriggerPoint_.rot, true, false, 20326)
end

function Quest6026:OnSubFinish602619(arg1)
    print("OnSubFinish602619")
end

function Quest6026:OnSubStart602615(arg1)
    print("OnSubStart602615")
    this:CreateQuestNpc(arg1, npcs.Npc7096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7096.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7101.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7106.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15407.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6026):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15414.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6026):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15969.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15969.alias, 6026):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15969.alias, 6026):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602622)
    this:SetNavigationByMainId(6026, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6026)
    actorUtils.BanUIByQuest(4, true, 6026)
    actorUtils.BanUIByQuest(16, true, 6026)
    actorUtils.BanUIByQuest(27, true, 6026)
end

function Quest6026:OnSubFinish602615(arg1)
    print("OnSubFinish602615")
end

function Quest6026:OnSubFailed602615(arg1)
    print("OnSubFailed602615")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubStart602616(arg1)
    print("OnSubStart602616")
    this:GetQuestNpcActor(npcs.Npc7096.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7101.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7106.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15969.alias, 6026):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(602616, 0, 60, 1, npcs.Npc16186.id)
    this:DeployStoryByQuest(110602622)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6026)
    actorUtils.BanUIByQuest(4, true, 6026)
    actorUtils.BanUIByQuest(16, true, 6026)
    actorUtils.BanUIByQuest(27, true, 6026)
end

function Quest6026:OnSubFinish602616(arg1)
    print("OnSubFinish602616")
    this:SafeDestroyQuestNpc(npcs.Npc16186.alias, 20326)
    this:CancelStoryByQuest(110602622)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubFailed602616(arg1)
    print("OnSubFailed602616")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubStart602606(arg1)
    print("OnSubStart602606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1321.id, 0, 602606, 15, true)
    this:BanCrowdNpc(3607, 3, datas.Ban602606crowd, true, true)
end

function Quest6026:OnSubFinish602606(arg1)
    print("OnSubFinish602606")
    this:PlayerEnterDungeonWithData(1822, 1300, 602606, 1, datas.PlayerEnterDungeonDataSN06, nil, nil)
    this:BanCrowdNpc(3607, 3, datas.Ban602606crowd, false, true)
end

function Quest6026:OnSubStart602623(arg1)
    print("OnSubStart602623")
    this:RecycleAllRes()
end

function Quest6026:OnSubFinish602623(arg1)
    print("OnSubFinish602623")
end

function Quest6026:OnSubStart602607(arg1)
    print("OnSubStart602607")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc7001.id, 0, 602607, 30, true)
    this:GetQuestNpcActor(npcs.Npc7001.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7002.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7002.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15970.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15970.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7004.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7004.alias, 6026):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15971.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15971.alias, 6026):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602608)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6026)
    actorUtils.BanUIByQuest(4, true, 6026)
    actorUtils.BanUIByQuest(16, true, 6026)
    actorUtils.BanUIByQuest(27, true, 6026)
end

function Quest6026:OnSubFinish602607(arg1)
    print("OnSubFinish602607")
end

function Quest6026:OnSubFailed602607(arg1)
    print("OnSubFailed602607")
    this:CancelStoryByQuest(110602608)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubStart602620(arg1)
    print("OnSubStart602620")
    this:NpcCreateWithNpcTrigger(npcs.Npc7004.id, 0, 15, 602620)
    this:GetQuestNpcActor(npcs.Npc7004.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15971.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7001.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7002.alias, 6026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15970.alias, 6026):DisableInteeHeadCtrl(true)
    this:SetNavigationByMainId(6026, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, true, 6026)
    actorUtils.BanUIByQuest(4, true, 6026)
    actorUtils.BanUIByQuest(16, true, 6026)
    actorUtils.BanUIByQuest(27, true, 6026)
end

function Quest6026:OnSubFinish602620(arg1)
    print("OnSubFinish602620")
    this:SafeDestroyQuestNpc(npcs.Npc7004.alias, 20327)
    this:SafeDestroyQuestNpc(npcs.Npc15971.alias, 20327)
    this:SafeDestroyQuestNpc(npcs.Npc7001.alias, 20327)
    this:SafeDestroyQuestNpc(npcs.Npc7002.alias, 20327)
    this:SafeDestroyQuestNpc(npcs.Npc15970.alias, 20327)
    this:TransmitPlayerWithQuestIdByData(602620, 1, datas.TransmitDataSN03, nil, nil, nil)
    this:CancelStoryByQuest(110602608)
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubFailed602620(arg1)
    print("OnSubFailed602620")
    this:CancelStoryByQuest(110602608)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuest")
    actorUtils.BanUIByQuest(2, false, 6026)
    actorUtils.BanUIByQuest(4, false, 6026)
    actorUtils.BanUIByQuest(16, false, 6026)
    actorUtils.BanUIByQuest(27, false, 6026)
end

function Quest6026:OnSubStart602608(arg1)
    print("OnSubStart602608")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602608, 0, 20, 1, npcs.Npc1315.id)
end

function Quest6026:OnSubFinish602608(arg1)
    print("OnSubFinish602608")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest6026:OnSubStart602621(arg1)
    print("OnSubStart602621")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602621, 0, 15, 1, npcs.Npc1315.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7103.alias, true, 1)
end

function Quest6026:OnSubFinish602621(arg1)
    print("OnSubFinish602621")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_602625, nil)
    end)
end

function Quest6026:OnSubStart602609(arg1)
    print("OnSubStart602609")
    this:NpcCreateWithNpcTrigger(npcs.Npc1310.id, 0, 20, 602609)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
end

function Quest6026:OnSubFinish602609(arg1)
    print("OnSubFinish602609")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:LightNotifyTo(npcs.Npc7103.alias, 0, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_602609, 2, nil, nil, nil)
end

function Quest6026:OnSubStart602610(arg1)
    print("OnSubStart602610")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602610, 0, 20, 1, npcs.Npc1310.id)
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1080.alias, 6026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1319.id, 0, false, 0)
end

function Quest6026:OnSubFinish602610(arg1)
    print("OnSubFinish602610")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1319.alias, 3)
    this:PlayerEnterDungeonWithData(1788, 1290, 602610, 1, datas.PlayerEnterDungeonDataDL, nil, nil)
end

function Quest6026:OnSubStart602624(arg1)
    print("OnSubStart602624")
    this:RecycleAllRes()
end

function Quest6026:OnSubFinish602624(arg1)
    print("OnSubFinish602624")
end

function Quest6026:OnSubStart602611(arg1)
    print("OnSubStart602611")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16039.id, 0, 602611, 40, true)
end

function Quest6026:OnSubFinish602611(arg1)
    print("OnSubFinish602611")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6026:OnSubStart602612(arg1)
    print("OnSubStart602612")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602612Trigger", "Actor/Gadget/Q602612Trigger", 70900002, 0, points._Q602612TriggerPoint_.pos, points._Q602612TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602612(arg1)
    print("OnSubFinish602612")
end

function Quest6026:OnSubStart602617(arg1)
    print("OnSubStart602617")
    this:DeployStoryByQuest(110602612)
end

function Quest6026:OnSubFinish602617(arg1)
    print("OnSubFinish602617")
    this:CancelStoryByQuest(110602612)
end

function Quest6026:OnSubFailed602617(arg1)
    print("OnSubFailed602617")
    this:CancelStoryByQuest(110602612)
end

function Quest6026:OnSubStart602625(arg1)
    print("OnSubStart602625")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602625Trigger", "Actor/Gadget/Q602625Trigger", 70900002, 0, points._Q602625TriggerPoint_.pos, points._Q602625TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602625(arg1)
    print("OnSubFinish602625")
end

function Quest6026:OnSubStart602626(arg1)
    print("OnSubStart602626")
    this:DeployStoryByQuest(110602626)
end

function Quest6026:OnSubFinish602626(arg1)
    print("OnSubFinish602626")
    this:CancelStoryByQuest(110602626)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6026:OnSubFailed602626(arg1)
    print("OnSubFailed602626")
    this:CancelStoryByQuest(110602626)
end

function Quest6026:OnSubStart602627(arg1)
    print("OnSubStart602627")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602627Trigger", "Actor/Gadget/Q602627Trigger", 70900002, 0, points._Q602627TriggerPoint_.pos, points._Q602627TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602627(arg1)
    print("OnSubFinish602627")
end

function Quest6026:OnSubStart602628(arg1)
    print("OnSubStart602628")
    this:DeployStoryByQuest(110602628)
end

function Quest6026:OnSubFinish602628(arg1)
    print("OnSubFinish602628")
    this:CancelStoryByQuest(110602628)
end

function Quest6026:OnSubFailed602628(arg1)
    print("OnSubFailed602628")
    this:CancelStoryByQuest(110602628)
end

function Quest6026:OnSubStart602629(arg1)
    print("OnSubStart602629")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602629Trigger", "Actor/Gadget/Q602629Trigger", 70900002, 0, points._Q602629TriggerPoint_.pos, points._Q602629TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602629(arg1)
    print("OnSubFinish602629")
end

function Quest6026:OnSubStart602630(arg1)
    print("OnSubStart602630")
    this:DeployStoryByQuest(110602630)
end

function Quest6026:OnSubFinish602630(arg1)
    print("OnSubFinish602630")
    this:CancelStoryByQuest(110602630)
end

function Quest6026:OnSubFailed602630(arg1)
    print("OnSubFailed602630")
    this:CancelStoryByQuest(110602630)
end

function Quest6026:OnSubStart602637(arg1)
    print("OnSubStart602637")
end

function Quest6026:OnSubFinish602637(arg1)
    print("OnSubFinish602637")
end

function Quest6026:OnSubStart602632(arg1)
    print("OnSubStart602632")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602632Trigger", "Actor/Gadget/Q602632Trigger", 70900002, 0, points._Q602632TriggerPoint_.pos, points._Q602632TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602632(arg1)
    print("OnSubFinish602632")
end

function Quest6026:OnSubStart602633(arg1)
    print("OnSubStart602633")
    this:CreateQuestNpc(arg1, npcs.Npc16044.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16044.alias, 6026):DoFreeStyle(4111, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16045.alias, 6026):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16046.alias, 6026):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110602633)
    this:SetNavigationByMainId(6026, true)
end

function Quest6026:OnSubFinish602633(arg1)
    print("OnSubFinish602633")
    this:SafeDestroyQuestNpc(npcs.Npc16044.alias, 20320)
    this:SafeDestroyQuestNpc(npcs.Npc16045.alias, 20320)
    this:SafeDestroyQuestNpc(npcs.Npc16046.alias, 20320)
    this:CancelStoryByQuest(110602633)
end

function Quest6026:OnSubFailed602633(arg1)
    print("OnSubFailed602633")
    this:CancelStoryByQuest(110602633)
end

function Quest6026:OnSubStart602638(arg1)
    print("OnSubStart602638")
    this:RecycleAllRes()
    actorMgr:CreateActorWithPos("Q602634Trigger", "Actor/Gadget/Q602634Trigger", 70900002, 0, points._Q602634TriggerPoint_.pos, points._Q602634TriggerPoint_.rot, true, false, 20320)
end

function Quest6026:OnSubFinish602638(arg1)
    print("OnSubFinish602638")
end

function Quest6026:OnSubStart602634(arg1)
    print("OnSubStart602634")
    this:CreateNpcWithCameraLookTrigger("Q602634T602633", 602634, npcs.Npc16041.id, 1, 95, 602633, true)
end

function Quest6026:OnSubFinish602634(arg1)
    print("OnSubFinish602634")
    this:SafeDestroyQuestNpc(npcs.Npc16041.alias, 20320)
end

function Quest6026:OnSubStart602635(arg1)
    print("OnSubStart602635")
    this:DeployStoryByQuest(110602635)
end

function Quest6026:OnSubFinish602635(arg1)
    print("OnSubFinish602635")
    this:CancelStoryByQuest(110602635)
end

function Quest6026:OnSubFailed602635(arg1)
    print("OnSubFailed602635")
    this:CancelStoryByQuest(110602635)
end

function Quest6026:OnSubStart602631(arg1)
    print("OnSubStart602631")
    this:RecycleAllRes()
    this:NpcCreateWithNpcTriggerAndBlackscreen(602631, 0, 40, 1, npcs.Npc16040.id)
end

function Quest6026:OnSubFinish602631(arg1)
    print("OnSubFinish602631")
    this:SafeDestroyQuestNpc(npcs.Npc16040.alias, 20320)
end

function Quest6026:OnSubStart602636(arg1)
    print("OnSubStart602636")
    this:DeployStoryByQuest(110602636)
end

function Quest6026:OnSubFinish602636(arg1)
    print("OnSubFinish602636")
    this:CancelStoryByQuest(110602636)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_Black_6026, 0, nil, nil, nil)
end

function Quest6026:OnSubFailed602636(arg1)
    print("OnSubFailed602636")
    this:CancelStoryByQuest(110602636)
end

function Quest6026:OnSubStart602613(arg1)
    print("OnSubStart602613")
    this:RecycleAllRes()
    this:NpcCreateWithNpcTrigger(npcs.Npc16040.id, 0, 15, 602613)
end

function Quest6026:OnSubFinish602613(arg1)
    print("OnSubFinish602613")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6026:OnSubStart602614(arg1)
    print("OnSubStart602614")
    this:NpcCreateWithNpcTrigger(npcs.Npc1322.id, 0, 8, 602614)
end

function Quest6026:OnSubFinish602614(arg1)
    print("OnSubFinish602614")
    this:SafeDestroyQuestNpc(npcs.Npc1322.alias, 3)
end

return Quest6026

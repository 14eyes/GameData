require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72166 = class("Quest72166", QuestActorProxy)
Quest72166.defaultAlias = "Quest72166"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72166:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216630"] = self.OnSubStart7216630,
        ["7216631"] = self.OnSubStart7216631,
        ["7216632"] = self.OnSubStart7216632,
        ["7216633"] = self.OnSubStart7216633,
        ["7216648"] = self.OnSubStart7216648,
        ["7216601"] = self.OnSubStart7216601,
        ["7216651"] = self.OnSubStart7216651,
        ["7216635"] = self.OnSubStart7216635,
        ["7216602"] = self.OnSubStart7216602,
        ["7216603"] = self.OnSubStart7216603,
        ["7216643"] = self.OnSubStart7216643,
        ["7216604"] = self.OnSubStart7216604,
        ["7216634"] = self.OnSubStart7216634,
        ["7216636"] = self.OnSubStart7216636,
        ["7216637"] = self.OnSubStart7216637,
        ["7216605"] = self.OnSubStart7216605,
        ["7216606"] = self.OnSubStart7216606,
        ["7216621"] = self.OnSubStart7216621,
        ["7216622"] = self.OnSubStart7216622,
        ["7216644"] = self.OnSubStart7216644,
        ["7216607"] = self.OnSubStart7216607,
        ["7216653"] = self.OnSubStart7216653,
        ["7216640"] = self.OnSubStart7216640,
        ["7216608"] = self.OnSubStart7216608,
        ["7216641"] = self.OnSubStart7216641,
        ["7216609"] = self.OnSubStart7216609,
        ["7216610"] = self.OnSubStart7216610,
        ["7216623"] = self.OnSubStart7216623,
        ["7216611"] = self.OnSubStart7216611,
        ["7216642"] = self.OnSubStart7216642,
        ["7216612"] = self.OnSubStart7216612,
        ["7216614"] = self.OnSubStart7216614,
        ["7216624"] = self.OnSubStart7216624,
        ["7216615"] = self.OnSubStart7216615,
        ["7216613"] = self.OnSubStart7216613,
        ["7216620"] = self.OnSubStart7216620,
        ["7216646"] = self.OnSubStart7216646,
        ["7216649"] = self.OnSubStart7216649,
        ["7216650"] = self.OnSubStart7216650,
        ["7216626"] = self.OnSubStart7216626,
        ["7216627"] = self.OnSubStart7216627,
        ["7216616"] = self.OnSubStart7216616,
        ["7216652"] = self.OnSubStart7216652,
        ["7216628"] = self.OnSubStart7216628,
        ["7216617"] = self.OnSubStart7216617,
        ["7216625"] = self.OnSubStart7216625,
        ["7216618"] = self.OnSubStart7216618,
        ["7216629"] = self.OnSubStart7216629,
        ["7216638"] = self.OnSubStart7216638,
        ["7216639"] = self.OnSubStart7216639,
        ["7216645"] = self.OnSubStart7216645,
        ["7216647"] = self.OnSubStart7216647,
        ["7216619"] = self.OnSubStart7216619
    }
end

function Quest72166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216630"] = self.OnSubFinish7216630,
        ["7216631"] = self.OnSubFinish7216631,
        ["7216632"] = self.OnSubFinish7216632,
        ["7216633"] = self.OnSubFinish7216633,
        ["7216648"] = self.OnSubFinish7216648,
        ["7216601"] = self.OnSubFinish7216601,
        ["7216651"] = self.OnSubFinish7216651,
        ["7216635"] = self.OnSubFinish7216635,
        ["7216602"] = self.OnSubFinish7216602,
        ["7216603"] = self.OnSubFinish7216603,
        ["7216643"] = self.OnSubFinish7216643,
        ["7216604"] = self.OnSubFinish7216604,
        ["7216634"] = self.OnSubFinish7216634,
        ["7216636"] = self.OnSubFinish7216636,
        ["7216637"] = self.OnSubFinish7216637,
        ["7216605"] = self.OnSubFinish7216605,
        ["7216606"] = self.OnSubFinish7216606,
        ["7216621"] = self.OnSubFinish7216621,
        ["7216622"] = self.OnSubFinish7216622,
        ["7216644"] = self.OnSubFinish7216644,
        ["7216607"] = self.OnSubFinish7216607,
        ["7216653"] = self.OnSubFinish7216653,
        ["7216640"] = self.OnSubFinish7216640,
        ["7216608"] = self.OnSubFinish7216608,
        ["7216641"] = self.OnSubFinish7216641,
        ["7216609"] = self.OnSubFinish7216609,
        ["7216610"] = self.OnSubFinish7216610,
        ["7216623"] = self.OnSubFinish7216623,
        ["7216611"] = self.OnSubFinish7216611,
        ["7216642"] = self.OnSubFinish7216642,
        ["7216612"] = self.OnSubFinish7216612,
        ["7216614"] = self.OnSubFinish7216614,
        ["7216624"] = self.OnSubFinish7216624,
        ["7216615"] = self.OnSubFinish7216615,
        ["7216613"] = self.OnSubFinish7216613,
        ["7216620"] = self.OnSubFinish7216620,
        ["7216646"] = self.OnSubFinish7216646,
        ["7216649"] = self.OnSubFinish7216649,
        ["7216650"] = self.OnSubFinish7216650,
        ["7216626"] = self.OnSubFinish7216626,
        ["7216627"] = self.OnSubFinish7216627,
        ["7216616"] = self.OnSubFinish7216616,
        ["7216652"] = self.OnSubFinish7216652,
        ["7216628"] = self.OnSubFinish7216628,
        ["7216617"] = self.OnSubFinish7216617,
        ["7216625"] = self.OnSubFinish7216625,
        ["7216618"] = self.OnSubFinish7216618,
        ["7216629"] = self.OnSubFinish7216629,
        ["7216638"] = self.OnSubFinish7216638,
        ["7216639"] = self.OnSubFinish7216639,
        ["7216645"] = self.OnSubFinish7216645,
        ["7216647"] = self.OnSubFinish7216647,
        ["7216619"] = self.OnSubFinish7216619
    }
end

function Quest72166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216630"] = self.OnSubFailed7216630,
        ["7216631"] = self.OnSubFailed7216631,
        ["7216632"] = self.OnSubFailed7216632,
        ["7216633"] = self.OnSubFailed7216633,
        ["7216648"] = self.OnSubFailed7216648,
        ["7216601"] = self.OnSubFailed7216601,
        ["7216651"] = self.OnSubFailed7216651,
        ["7216635"] = self.OnSubFailed7216635,
        ["7216602"] = self.OnSubFailed7216602,
        ["7216603"] = self.OnSubFailed7216603,
        ["7216643"] = self.OnSubFailed7216643,
        ["7216604"] = self.OnSubFailed7216604,
        ["7216634"] = self.OnSubFailed7216634,
        ["7216636"] = self.OnSubFailed7216636,
        ["7216637"] = self.OnSubFailed7216637,
        ["7216605"] = self.OnSubFailed7216605,
        ["7216606"] = self.OnSubFailed7216606,
        ["7216621"] = self.OnSubFailed7216621,
        ["7216622"] = self.OnSubFailed7216622,
        ["7216644"] = self.OnSubFailed7216644,
        ["7216607"] = self.OnSubFailed7216607,
        ["7216653"] = self.OnSubFailed7216653,
        ["7216640"] = self.OnSubFailed7216640,
        ["7216608"] = self.OnSubFailed7216608,
        ["7216641"] = self.OnSubFailed7216641,
        ["7216609"] = self.OnSubFailed7216609,
        ["7216610"] = self.OnSubFailed7216610,
        ["7216623"] = self.OnSubFailed7216623,
        ["7216611"] = self.OnSubFailed7216611,
        ["7216642"] = self.OnSubFailed7216642,
        ["7216612"] = self.OnSubFailed7216612,
        ["7216614"] = self.OnSubFailed7216614,
        ["7216624"] = self.OnSubFailed7216624,
        ["7216615"] = self.OnSubFailed7216615,
        ["7216613"] = self.OnSubFailed7216613,
        ["7216620"] = self.OnSubFailed7216620,
        ["7216646"] = self.OnSubFailed7216646,
        ["7216649"] = self.OnSubFailed7216649,
        ["7216650"] = self.OnSubFailed7216650,
        ["7216626"] = self.OnSubFailed7216626,
        ["7216627"] = self.OnSubFailed7216627,
        ["7216616"] = self.OnSubFailed7216616,
        ["7216652"] = self.OnSubFailed7216652,
        ["7216628"] = self.OnSubFailed7216628,
        ["7216617"] = self.OnSubFailed7216617,
        ["7216625"] = self.OnSubFailed7216625,
        ["7216618"] = self.OnSubFailed7216618,
        ["7216629"] = self.OnSubFailed7216629,
        ["7216638"] = self.OnSubFailed7216638,
        ["7216639"] = self.OnSubFailed7216639,
        ["7216645"] = self.OnSubFailed7216645,
        ["7216647"] = self.OnSubFailed7216647,
        ["7216619"] = self.OnSubFailed7216619
    }
end

function Quest72166:Start()
    print("Start")
end

function Quest72166:OnDestroy()
    print("OnDestroy")
end

function Quest72166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72166:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72166:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72166:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72166:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72166:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72166:OnSubStart7216630(arg1)
    print("OnSubStart7216630")
end

function Quest72166:OnSubFinish7216630(arg1)
    print("OnSubFinish7216630")
end

function Quest72166:OnSubFailed7216630(arg1)
    print("OnSubFailed7216630")
end

function Quest72166:OnSubStart7216631(arg1)
    print("OnSubStart7216631")
    self:NarratorOnlyTask(datas.Narrator_001, function(arg1)
        arg1:FinishQuestID(false, 7216631)
    end, "")
end

function Quest72166:OnSubFinish7216631(arg1)
    print("OnSubFinish7216631")
end

function Quest72166:OnSubFailed7216631(arg1)
    print("OnSubFailed7216631")
end

function Quest72166:OnSubStart7216632(arg1)
    print("OnSubStart7216632")
    actorMgr:CreateActorWithPos("PM_Talk_Trigger", "Actor/Gadget/PM_Talk_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q_72166_PmTalk_Center").pos, sceneData:GetDummyPoint(3, "Q_72166_PmTalk_Center").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216632(arg1)
    print("OnSubFinish7216632")
end

function Quest72166:OnSubFailed7216632(arg1)
    print("OnSubFailed7216632")
end

function Quest72166:OnSubStart7216633(arg1)
    print("OnSubStart7216633")
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216633, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(1.5, function(arg1)
            arg1:EnablePlayerInput(true)
        end)
    end)
end

function Quest72166:OnSubFinish7216633(arg1)
    print("OnSubFinish7216633")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216633(arg1)
    print("OnSubFailed7216633")
end

function Quest72166:OnSubStart7216648(arg1)
    print("OnSubStart7216648")
    actorMgr:CreateActorWithPos("MT_Talk_Enter", "Actor/Gadget/MT_Talk_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_1").pos, sceneData:GetDummyPoint(3, "Q3_72116_1").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216648(arg1)
    print("OnSubFinish7216648")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
        arg1_2:CallDelay(0.5, function(arg1)
            arg1:RequestInteraction(npcs.Npc20321Data.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72166:OnSubFailed7216648(arg1)
    print("OnSubFailed7216648")
end

function Quest72166:OnSubStart7216601(arg1)
    print("OnSubStart7216601")
end

function Quest72166:OnSubFinish7216601(arg1)
    print("OnSubFinish7216601")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:NpcDestroy(npcs.Npc3042Data.alias, 3)
    self:NpcDestroy(npcs.Npc3041Data.alias, 3)
    self:NpcDestroy(npcs.Npc20333Data.alias, 3)
end

function Quest72166:OnSubFailed7216601(arg1)
    print("OnSubFailed7216601")
end

function Quest72166:OnSubStart7216651(arg1)
    print("OnSubStart7216651")
    actorMgr:CreateActorWithPos("Q_72166_Achieve_Trigger", "Actor/Gadget/Q_72166_Achieve_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216651(arg1)
    print("OnSubFinish7216651")
end

function Quest72166:OnSubFailed7216651(arg1)
    print("OnSubFailed7216651")
end

function Quest72166:OnSubStart7216635(arg1)
    print("OnSubStart7216635")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    actorMgr:CreateActorWithPos("Q72166Trigger", "Actor/Gadget/Q72166Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216635(arg1)
    print("OnSubFinish7216635")
    self:NpcDestroy(npcs.Npc3042Data.alias, 3)
end

function Quest72166:OnSubFailed7216635(arg1)
    print("OnSubFailed7216635")
end

function Quest72166:OnSubStart7216602(arg1)
    print("OnSubStart7216602")
    self:NpcCreate(arg1, npcs.Npc20320Data.id, 1)
    actorMgr:CreateActorWithPos("ALiu_Enter", "Actor/Gadget/ALiu_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_2").pos, sceneData:GetDummyPoint(3, "Q3_72116_2").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216602(arg1)
    print("OnSubFinish7216602")
end

function Quest72166:OnSubFailed7216602(arg1)
    print("OnSubFailed7216602")
end

function Quest72166:OnSubStart7216603(arg1)
    print("OnSubStart7216603")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
end

function Quest72166:OnSubFinish7216603(arg1)
    print("OnSubFinish7216603")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216603(arg1)
    print("OnSubFailed7216603")
end

function Quest72166:OnSubStart7216643(arg1)
    print("OnSubStart7216643")
    self:CallDelay(1.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20320Data.alias):WalkToRouteTask(datas.ALiu_Walk_Point, function(arg1)
            actorMgr:CreateActorWithPos("ALiu_Feather_TagetTrigger", "Actor/Gadget/ALiu_Feather_TagetTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q_72166_ALiu_FeatherTarget").pos, sceneData:GetDummyPoint(3, "Q_72166_ALiu_FeatherTarget").rot, true, false, 3)
        end)

        arg1:NarratorOnlyTask(datas.Reminder_ALiu_WalkStart, nil, "")
    end)
end

function Quest72166:OnSubFinish7216643(arg1)
    print("OnSubFinish7216643")
    self:NarratorOnlyTask(datas.Reminder_ALiu_WalkEnd, nil, "")
end

function Quest72166:OnSubFailed7216643(arg1)
    print("OnSubFailed7216643")
end

function Quest72166:OnSubStart7216604(arg1)
    print("OnSubStart7216604")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20320Data.alias):LookAt(sceneData:GetDummyPoint(3, "Q_72166_ALiu_LookAtPoint").pos)
    end)
end

function Quest72166:OnSubFinish7216604(arg1)
    print("OnSubFinish7216604")
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20431Data.alias):DoFreeStyleTask(1280, false)
    end)
end

function Quest72166:OnSubFailed7216604(arg1)
    print("OnSubFailed7216604")
end

function Quest72166:OnSubStart7216634(arg1)
    print("OnSubStart7216634")
    self:CallDelay(3, function(arg1)
        arg1:RequestInteraction(npcs.Npc20320Data.alias)
    end)
end

function Quest72166:OnSubFinish7216634(arg1)
    print("OnSubFinish7216634")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216634(arg1)
    print("OnSubFailed7216634")
end

function Quest72166:OnSubStart7216636(arg1)
    print("OnSubStart7216636")
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20431Data.alias):DoFreeStyleTask(1280, false)
    end)
end

function Quest72166:OnSubFinish7216636(arg1)
    print("OnSubFinish7216636")
    self:GetQuestNpcActor(npcs.Npc20320Data.alias):DestroyWithDither(false, 0.5)
    self:GetQuestNpcActor(npcs.Npc20431Data.alias):DestroyWithDither(false, 0.5)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216636(arg1)
    print("OnSubFailed7216636")
end

function Quest72166:OnSubStart7216637(arg1)
    print("OnSubStart7216637")
    self:NarratorOnlyTask(datas.Reminder_Dig, nil, "")
end

function Quest72166:OnSubFinish7216637(arg1)
    print("OnSubFinish7216637")
end

function Quest72166:OnSubFailed7216637(arg1)
    print("OnSubFailed7216637")
end

function Quest72166:OnSubStart7216605(arg1)
    print("OnSubStart7216605")
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0, function(arg1)
            arg1:CreateQuestNpcBesidePlayer(7216605, npcs.PaimonData.id, 0.5)
            arg1:CallDelay(0.5, function(arg1)
                arg1:EnablePlayerInput(true)
                arg1:RequestInteraction(npcs.PaimonData.alias)
            end)
        end, nil, nil, "", false, true)
    end)
end

function Quest72166:OnSubFinish7216605(arg1)
    print("OnSubFinish7216605")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_JS_Go, nil, "")
    end)
end

function Quest72166:OnSubFailed7216605(arg1)
    print("OnSubFailed7216605")
end

function Quest72166:OnSubStart7216606(arg1)
    print("OnSubStart7216606")
    self:NpcCreate(arg1, npcs.Npc20323Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20324Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 6)
    actorMgr:CreateActorWithPos("JS_Enter_01", "Actor/Gadget/JS_Enter_01", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_JS_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72116_JS_Nav").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216606(arg1)
    print("OnSubFinish7216606")
    self:NarratorOnlyTask(datas.Reminder_JS_Enter, nil, "")
end

function Quest72166:OnSubFailed7216606(arg1)
    print("OnSubFailed7216606")
end

function Quest72166:OnSubStart7216621(arg1)
    print("OnSubStart7216621")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216621(arg1)
    print("OnSubFinish7216621")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216621(arg1)
    print("OnSubFailed7216621")
end

function Quest72166:OnSubStart7216622(arg1)
    print("OnSubStart7216622")
    self:CreateQuestNpc(arg1, npcs.Npc20323Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20324Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 6)
end

function Quest72166:OnSubFinish7216622(arg1)
    print("OnSubFinish7216622")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20323Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20324Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216622(arg1)
    print("OnSubFailed7216622")
end

function Quest72166:OnSubStart7216644(arg1)
    print("OnSubStart7216644")
end

function Quest72166:OnSubFinish7216644(arg1)
    print("OnSubFinish7216644")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216644(arg1)
    print("OnSubFailed7216644")
end

function Quest72166:OnSubStart7216607(arg1)
    print("OnSubStart7216607")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
end

function Quest72166:OnSubFinish7216607(arg1)
    print("OnSubFinish7216607")
end

function Quest72166:OnSubFailed7216607(arg1)
    print("OnSubFailed7216607")
end

function Quest72166:OnSubStart7216653(arg1)
    print("OnSubStart7216653")
end

function Quest72166:OnSubFinish7216653(arg1)
    print("OnSubFinish7216653")
end

function Quest72166:OnSubFailed7216653(arg1)
    print("OnSubFailed7216653")
end

function Quest72166:OnSubStart7216640(arg1)
    print("OnSubStart7216640")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216640, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72166:OnSubFinish7216640(arg1)
    print("OnSubFinish7216640")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216640(arg1)
    print("OnSubFailed7216640")
end

function Quest72166:OnSubStart7216608(arg1)
    print("OnSubStart7216608")
    actorMgr:CreateActorWithPos("Area_A_Enter", "Actor/Gadget/Area_A_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_AreaA_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72116_AreaA_Nav").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216608(arg1)
    print("OnSubFinish7216608")
end

function Quest72166:OnSubFailed7216608(arg1)
    print("OnSubFailed7216608")
end

function Quest72166:OnSubStart7216641(arg1)
    print("OnSubStart7216641")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216641(arg1)
    print("OnSubFinish7216641")
    self:NarratorOnlyTask(datas.Reminder_PointA_FeatherUse, nil, "")
    self:CallDelay(3, function(arg1)
        arg1:RequestInteraction(npcs.Npc20327Data.alias)
    end)
end

function Quest72166:OnSubFailed7216641(arg1)
    print("OnSubFailed7216641")
end

function Quest72166:OnSubStart7216609(arg1)
    print("OnSubStart7216609")
    self:CreateQuestNpc(arg1, npcs.Npc20327Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
end

function Quest72166:OnSubFinish7216609(arg1)
    print("OnSubFinish7216609")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc20327Data.alias, 3)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_PointA_TalkFinish, nil, "")
    end)
end

function Quest72166:OnSubFailed7216609(arg1)
    print("OnSubFailed7216609")
end

function Quest72166:OnSubStart7216610(arg1)
    print("OnSubStart7216610")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216610(arg1)
    print("OnSubFinish7216610")
end

function Quest72166:OnSubFailed7216610(arg1)
    print("OnSubFailed7216610")
end

function Quest72166:OnSubStart7216623(arg1)
    print("OnSubStart7216623")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
    self:EnablePlayerInput(false)
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20327Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20327Data.alias)
        arg1_2:EnablePlayerInput(true)
    end)
end

function Quest72166:OnSubFinish7216623(arg1)
    print("OnSubFinish7216623")
    self:GetQuestNpcActor(npcs.Npc20327Data.alias):DestroyWithDither(false, 0.5)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_GoPointB, nil, "")
    end)
end

function Quest72166:OnSubFailed7216623(arg1)
    print("OnSubFailed7216623")
end

function Quest72166:OnSubStart7216611(arg1)
    print("OnSubStart7216611")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    actorMgr:CreateActorWithPos("Area_B_Enter", "Actor/Gadget/Area_B_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_AreaB_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72116_AreaB_Nav").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216611(arg1)
    print("OnSubFinish7216611")
    self:NarratorOnlyTask(datas.Reminder_PointB_Enter, nil, "")
end

function Quest72166:OnSubFailed7216611(arg1)
    print("OnSubFailed7216611")
end

function Quest72166:OnSubStart7216642(arg1)
    print("OnSubStart7216642")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216642(arg1)
    print("OnSubFinish7216642")
end

function Quest72166:OnSubFailed7216642(arg1)
    print("OnSubFailed7216642")
end

function Quest72166:OnSubStart7216612(arg1)
    print("OnSubStart7216612")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20328Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
    self:CallDelay(3, function(arg1)
        arg1:RequestInteraction(npcs.Npc20328Data.alias)
        arg1:EnablePlayerInput(true)
    end)
end

function Quest72166:OnSubFinish7216612(arg1)
    print("OnSubFinish7216612")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20431Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20328Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_PointB_Hint, nil, "")
    end)
end

function Quest72166:OnSubFailed7216612(arg1)
    print("OnSubFailed7216612")
end

function Quest72166:OnSubStart7216614(arg1)
    print("OnSubStart7216614")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216614(arg1)
    print("OnSubFinish7216614")
end

function Quest72166:OnSubFailed7216614(arg1)
    print("OnSubFailed7216614")
end

function Quest72166:OnSubStart7216624(arg1)
    print("OnSubStart7216624")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20328Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20328Data.alias)
        arg1_2:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
end

function Quest72166:OnSubFinish7216624(arg1)
    print("OnSubFinish7216624")
    self:SafeDestroyQuestNpc(npcs.Npc20328Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_PointB_Finish, nil, "")
    end)
end

function Quest72166:OnSubFailed7216624(arg1)
    print("OnSubFailed7216624")
end

function Quest72166:OnSubStart7216615(arg1)
    print("OnSubStart7216615")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    actorMgr:CreateActorWithPos("Area_C_Enter", "Actor/Gadget/Area_C_Enter", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_AreaC_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72116_AreaC_Nav").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216615(arg1)
    print("OnSubFinish7216615")
    self:NarratorOnlyTask(datas.Reminder_PointC_Enter, nil, "")
end

function Quest72166:OnSubFailed7216615(arg1)
    print("OnSubFailed7216615")
end

function Quest72166:OnSubStart7216613(arg1)
    print("OnSubStart7216613")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216613(arg1)
    print("OnSubFinish7216613")
end

function Quest72166:OnSubFailed7216613(arg1)
    print("OnSubFailed7216613")
end

function Quest72166:OnSubStart7216620(arg1)
    print("OnSubStart7216620")
    self:CreateQuestNpc(arg1, npcs.Npc20334Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
    self:CallDelay(3.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc20334Data.alias)
    end)
end

function Quest72166:OnSubFinish7216620(arg1)
    print("OnSubFinish7216620")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc20334Data.alias, 3)
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_PointC_ALiu, nil, "")
    end)
end

function Quest72166:OnSubFailed7216620(arg1)
    print("OnSubFailed7216620")
end

function Quest72166:OnSubStart7216646(arg1)
    print("OnSubStart7216646")
    actorMgr:CreateActorWithPos("Stone_Trigger", "Actor/Gadget/Stone_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q_72166_StoneTrigger").pos, sceneData:GetDummyPoint(3, "Q_72166_StoneTrigger").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216646(arg1)
    print("OnSubFinish7216646")
end

function Quest72166:OnSubFailed7216646(arg1)
    print("OnSubFailed7216646")
end

function Quest72166:OnSubStart7216649(arg1)
    print("OnSubStart7216649")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216649, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72166:OnSubFinish7216649(arg1)
    print("OnSubFinish7216649")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216649(arg1)
    print("OnSubFailed7216649")
end

function Quest72166:OnSubStart7216650(arg1)
    print("OnSubStart7216650")
end

function Quest72166:OnSubFinish7216650(arg1)
    print("OnSubFinish7216650")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_AreaC_FeatherUse, nil, "")
    end)
end

function Quest72166:OnSubFailed7216650(arg1)
    print("OnSubFailed7216650")
end

function Quest72166:OnSubStart7216626(arg1)
    print("OnSubStart7216626")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216626(arg1)
    print("OnSubFinish7216626")
    self:NarratorOnlyTask(datas.Reminder_StoneFind_2, nil, "")
end

function Quest72166:OnSubFailed7216626(arg1)
    print("OnSubFailed7216626")
end

function Quest72166:OnSubStart7216627(arg1)
    print("OnSubStart7216627")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    actorMgr:CreateActorWithPos("StoneFindA_Trigger", "Actor/Gadget/StoneFindA_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72166_StoneFind_A").pos, sceneData:GetDummyPoint(3, "72166_StoneFind_A").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216627(arg1)
    print("OnSubFinish7216627")
end

function Quest72166:OnSubFailed7216627(arg1)
    print("OnSubFailed7216627")
end

function Quest72166:OnSubStart7216616(arg1)
    print("OnSubStart7216616")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216616(arg1)
    print("OnSubFinish7216616")
    self:NarratorOnlyTask(datas.Reminder_StoneFind_3, nil, "")
end

function Quest72166:OnSubFailed7216616(arg1)
    print("OnSubFailed7216616")
end

function Quest72166:OnSubStart7216652(arg1)
    print("OnSubStart7216652")
end

function Quest72166:OnSubFinish7216652(arg1)
    print("OnSubFinish7216652")
end

function Quest72166:OnSubFailed7216652(arg1)
    print("OnSubFailed7216652")
end

function Quest72166:OnSubStart7216628(arg1)
    print("OnSubStart7216628")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
    self:CallDelay(9, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_StoneFind_All, nil, "")
    end)
end

function Quest72166:OnSubFinish7216628(arg1)
    print("OnSubFinish7216628")
end

function Quest72166:OnSubFailed7216628(arg1)
    print("OnSubFailed7216628")
end

function Quest72166:OnSubStart7216617(arg1)
    print("OnSubStart7216617")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 4)
end

function Quest72166:OnSubFinish7216617(arg1)
    print("OnSubFinish7216617")
end

function Quest72166:OnSubFailed7216617(arg1)
    print("OnSubFailed7216617")
end

function Quest72166:OnSubStart7216625(arg1)
    print("OnSubStart7216625")
    self:CreateQuestNpc(arg1, npcs.Npc20450Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20451Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20446Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20447Data.id, 5)
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20334Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20334Data.alias)
        arg1_2:EnablePlayerInput(true)
    end)
end

function Quest72166:OnSubFinish7216625(arg1)
    print("OnSubFinish7216625")
    self:SafeDestroyQuestNpc(npcs.Npc20450Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20451Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20446Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20447Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_PointC_Finish, nil, "")
    end)
end

function Quest72166:OnSubFailed7216625(arg1)
    print("OnSubFailed7216625")
end

function Quest72166:OnSubStart7216618(arg1)
    print("OnSubStart7216618")
    actorMgr:CreateActorWithPos("JS_Back_01", "Actor/Gadget/JS_Back_01", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_JS_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72116_JS_Nav").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216618(arg1)
    print("OnSubFinish7216618")
end

function Quest72166:OnSubFailed7216618(arg1)
    print("OnSubFailed7216618")
end

function Quest72166:OnSubStart7216629(arg1)
    print("OnSubStart7216629")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216618, npcs.PaimonData.id, 0.5)
        arg1:EnablePlayerInput(false)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72166:OnSubFinish7216629(arg1)
    print("OnSubFinish7216629")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216629(arg1)
    print("OnSubFailed7216629")
end

function Quest72166:OnSubStart7216638(arg1)
    print("OnSubStart7216638")
    actorMgr:CreateActorWithPos("PM_Talk_MT_Trigger", "Actor/Gadget/PM_Talk_MT_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72116_1").pos, sceneData:GetDummyPoint(3, "Q3_72116_1").rot, true, false, 3)
end

function Quest72166:OnSubFinish7216638(arg1)
    print("OnSubFinish7216638")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7216638, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)

    self:EnablePlayerInput(false)
end

function Quest72166:OnSubFailed7216638(arg1)
    print("OnSubFailed7216638")
end

function Quest72166:OnSubStart7216639(arg1)
    print("OnSubStart7216639")
end

function Quest72166:OnSubFinish7216639(arg1)
    print("OnSubFinish7216639")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216639(arg1)
    print("OnSubFailed7216639")
end

function Quest72166:OnSubStart7216645(arg1)
    print("OnSubStart7216645")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
end

function Quest72166:OnSubFinish7216645(arg1)
    print("OnSubFinish7216645")
    self:RequestInteraction(npcs.Npc20321Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216645(arg1)
    print("OnSubFailed7216645")
end

function Quest72166:OnSubStart7216647(arg1)
    print("OnSubStart7216647")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
end

function Quest72166:OnSubFinish7216647(arg1)
    print("OnSubFinish7216647")
end

function Quest72166:OnSubFailed7216647(arg1)
    print("OnSubFailed7216647")
end

function Quest72166:OnSubStart7216619(arg1)
    print("OnSubStart7216619")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    self:RequestInteraction(npcs.Npc20321Data.alias)
end

function Quest72166:OnSubFinish7216619(arg1)
    print("OnSubFinish7216619")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72166:OnSubFailed7216619(arg1)
    print("OnSubFailed7216619")
end

return Quest72166

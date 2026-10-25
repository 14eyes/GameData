require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73003 = class("Quest73003", QuestActorProxy)
Quest73003.defaultAlias = "Quest73003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300301"] = self.OnSubStart7300301,
        ["7300302"] = self.OnSubStart7300302,
        ["7300303"] = self.OnSubStart7300303,
        ["7300317"] = self.OnSubStart7300317,
        ["7300304"] = self.OnSubStart7300304,
        ["7300310"] = self.OnSubStart7300310,
        ["7300311"] = self.OnSubStart7300311,
        ["7300315"] = self.OnSubStart7300315,
        ["7300316"] = self.OnSubStart7300316,
        ["7300312"] = self.OnSubStart7300312,
        ["7300305"] = self.OnSubStart7300305,
        ["7300306"] = self.OnSubStart7300306,
        ["7300313"] = self.OnSubStart7300313,
        ["7300314"] = self.OnSubStart7300314,
        ["7300307"] = self.OnSubStart7300307,
        ["7300308"] = self.OnSubStart7300308,
        ["7300309"] = self.OnSubStart7300309
    }
end

function Quest73003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300301"] = self.OnSubFinish7300301,
        ["7300302"] = self.OnSubFinish7300302,
        ["7300303"] = self.OnSubFinish7300303,
        ["7300317"] = self.OnSubFinish7300317,
        ["7300304"] = self.OnSubFinish7300304,
        ["7300310"] = self.OnSubFinish7300310,
        ["7300311"] = self.OnSubFinish7300311,
        ["7300315"] = self.OnSubFinish7300315,
        ["7300316"] = self.OnSubFinish7300316,
        ["7300312"] = self.OnSubFinish7300312,
        ["7300305"] = self.OnSubFinish7300305,
        ["7300306"] = self.OnSubFinish7300306,
        ["7300313"] = self.OnSubFinish7300313,
        ["7300314"] = self.OnSubFinish7300314,
        ["7300307"] = self.OnSubFinish7300307,
        ["7300308"] = self.OnSubFinish7300308,
        ["7300309"] = self.OnSubFinish7300309
    }
end

function Quest73003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73003:Start()
    print("Start")
end

function Quest73003:OnDestroy()
    print("OnDestroy")
end

function Quest73003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73003:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73003:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73003:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73003:OnSubStart7300301(arg1)
    print("OnSubStart7300301")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300301", "Actor/Gadget/Q73003Trigger_7300301", 70900002, 0, {x = -1242.366, y = 176.719, z = 2986.486}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300301(arg1)
    print("OnSubFinish7300301")
end

function Quest73003:OnSubStart7300302(arg1)
    print("OnSubStart7300302")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300302(arg1)
    print("OnSubFinish7300302")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20594Data.alias, 3)
end

function Quest73003:OnSubStart7300303(arg1)
    print("OnSubStart7300303")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    self:NarratorOnlyTask(datas.NarratorTable1_ranaHint1, nil, "")
    actorMgr:CreateActorWithPos("Q73003Trigger_7300303_finish", "Actor/Gadget/Q73003Trigger_7300303_finish", 70900002, 0, {x = -1296.842, y = 191.391, z = 2929.381}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300303(arg1)
    print("OnSubFinish7300303")
end

function Quest73003:OnSubStart7300317(arg1)
    print("OnSubStart7300317")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300317(arg1)
    print("OnSubFinish7300317")
end

function Quest73003:OnSubStart7300304(arg1)
    print("OnSubStart7300304")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300304", "Actor/Gadget/Q73003Trigger_7300304", 70900002, 0, {x = -1341.646, y = 195.392, z = 2943.957}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300304_narrator", "Actor/Gadget/Q73003Trigger_7300304_narrator", 70900002, 0, {x = -1285.789, y = 191.2, z = 2937.939}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    self:GetQuestNpcActor(npcs.Npc20594Data.alias):EnableHeadCtrl(false)
end

function Quest73003:OnSubFinish7300304(arg1)
    print("OnSubFinish7300304")
end

function Quest73003:OnSubStart7300310(arg1)
    print("OnSubStart7300310")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20758Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20759Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300310(arg1)
    print("OnSubFinish7300310")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20758Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20759Data.alias, 3)
end

function Quest73003:OnSubStart7300311(arg1)
    print("OnSubStart7300311")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300311", "Actor/Gadget/Q73003Trigger_7300311", 70900002, 0, {x = -1355.97, y = 152.0, z = 2842.046}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300311(arg1)
    print("OnSubFinish7300311")
end

function Quest73003:OnSubStart7300315(arg1)
    print("OnSubStart7300315")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300315(arg1)
    print("OnSubFinish7300315")
    self:NarratorOnlyTask(datas.NarratorTable3_ranaHint3, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73003:OnSubStart7300316(arg1)
    print("OnSubStart7300316")
    self:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300316_finish", "Actor/Gadget/Q73003Trigger_7300316_finish", 70900002, 0, {x = -1386.747, y = 145.823, z = 2851.796}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300316_narratorlookcamera", "Actor/Gadget/Q73003Trigger_7300316_narratorlookcamera", 70900002, 0, {x = -1394.951, y = 180.053, z = 2851.283}, {x = 0.0, y = 340.667, z = 0.0}, true, false, 3)
end

function Quest73003:OnSubFinish7300316(arg1)
    print("OnSubFinish7300316")
    self:TransmitPlayerByQuestId(7300316, 1)
end

function Quest73003:OnSubStart7300312(arg1)
    print("OnSubStart7300312")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300312(arg1)
    print("OnSubFinish7300312")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73003:OnSubStart7300305(arg1)
    print("OnSubStart7300305")
    self:CreateQuestNpc(arg1, npcs.Npc20594Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20594Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300305(arg1)
    print("OnSubFinish7300305")
    self:SafeDestroyQuestNpc(npcs.Npc20594Data.alias, 3)
end

function Quest73003:OnSubStart7300306(arg1)
    print("OnSubStart7300306")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    self:RequestInteractionForceAlias("20598")
end

function Quest73003:OnSubFinish7300306(arg1)
    print("OnSubFinish7300306")
end

function Quest73003:OnSubStart7300313(arg1)
    print("OnSubStart7300313")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300313_finish", "Actor/Gadget/Q73003Trigger_7300313_finish", 70900002, 0, {x = -1372.36, y = 185.335, z = 2916.469}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger1_7300313_narrator", "Actor/Gadget/Q73003Trigger1_7300313_narrator", 70900002, 0, {x = -1361.949, y = 152.0, z = 2857.269}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300313(arg1)
    print("OnSubFinish7300313")
end

function Quest73003:OnSubStart7300314(arg1)
    print("OnSubStart7300314")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300314(arg1)
    print("OnSubFinish7300314")
    self:SafeDestroyQuestNpc(npcs.Npc20594Data.alias, 3)
end

function Quest73003:OnSubStart7300307(arg1)
    print("OnSubStart7300307")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73003:OnSubFinish7300307(arg1)
    print("OnSubFinish7300307")
    self:TransmitPlayerWithTextByQuestId(7300307, 1, datas.TextmapId, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4198Data.alias, 3)
end

function Quest73003:OnSubStart7300308(arg1)
    print("OnSubStart7300308")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300308", "Actor/Gadget/Q73003Trigger_7300308", 70900002, 0, {x = -1369.959, y = 183.68, z = 2915.467}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300308_narrator", "Actor/Gadget/Q73003Trigger_7300308_narrator", 70900002, 0, {x = -1296.208, y = 195.05, z = 2921.406}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300308(arg1)
    print("OnSubFinish7300308")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:ActorDestroy("Q73003Trigger_7300308")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73003:OnSubStart7300309(arg1)
    print("OnSubStart7300309")
    self:CreateQuestNpc(arg1, npcs.Npc20813Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300309_narrator1", "Actor/Gadget/Q73003Trigger_7300309_narrator1", 70900002, 0, {x = -1365.239, y = 183.033, z = 2897.401}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300309_narrator3", "Actor/Gadget/Q73003Trigger_7300309_narrator3", 70900002, 0, {x = -1427.024, y = 201.54, z = 2740.218}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73003Trigger_7300309_narrator4", "Actor/Gadget/Q73003Trigger_7300309_narrator4", 70900002, 0, {x = -1420.79, y = 206.948, z = 2669.103}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73003:OnSubFinish7300309(arg1)
    print("OnSubFinish7300309")
    self:SafeDestroyQuestNpc(npcs.Npc20813Data.alias, 3)
end

return Quest73003

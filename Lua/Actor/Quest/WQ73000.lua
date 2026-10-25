require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73000 = class("Quest73000", QuestActorProxy)
Quest73000.defaultAlias = "Quest73000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300001"] = self.OnSubStart7300001,
        ["7300002"] = self.OnSubStart7300002,
        ["7300003"] = self.OnSubStart7300003,
        ["7300004"] = self.OnSubStart7300004,
        ["7300016"] = self.OnSubStart7300016,
        ["7300005"] = self.OnSubStart7300005,
        ["7300017"] = self.OnSubStart7300017,
        ["7300006"] = self.OnSubStart7300006,
        ["7300007"] = self.OnSubStart7300007,
        ["7300009"] = self.OnSubStart7300009,
        ["7300010"] = self.OnSubStart7300010,
        ["7300011"] = self.OnSubStart7300011,
        ["7300008"] = self.OnSubStart7300008,
        ["7300020"] = self.OnSubStart7300020,
        ["7300012"] = self.OnSubStart7300012,
        ["7300013"] = self.OnSubStart7300013,
        ["7300014"] = self.OnSubStart7300014,
        ["7300015"] = self.OnSubStart7300015,
        ["7300018"] = self.OnSubStart7300018,
        ["7300019"] = self.OnSubStart7300019
    }
end

function Quest73000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300001"] = self.OnSubFinish7300001,
        ["7300002"] = self.OnSubFinish7300002,
        ["7300003"] = self.OnSubFinish7300003,
        ["7300004"] = self.OnSubFinish7300004,
        ["7300016"] = self.OnSubFinish7300016,
        ["7300005"] = self.OnSubFinish7300005,
        ["7300017"] = self.OnSubFinish7300017,
        ["7300006"] = self.OnSubFinish7300006,
        ["7300007"] = self.OnSubFinish7300007,
        ["7300009"] = self.OnSubFinish7300009,
        ["7300010"] = self.OnSubFinish7300010,
        ["7300011"] = self.OnSubFinish7300011,
        ["7300008"] = self.OnSubFinish7300008,
        ["7300020"] = self.OnSubFinish7300020,
        ["7300012"] = self.OnSubFinish7300012,
        ["7300013"] = self.OnSubFinish7300013,
        ["7300014"] = self.OnSubFinish7300014,
        ["7300015"] = self.OnSubFinish7300015,
        ["7300018"] = self.OnSubFinish7300018,
        ["7300019"] = self.OnSubFinish7300019
    }
end

function Quest73000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73000:Start()
    print("Start")
end

function Quest73000:OnDestroy()
    print("OnDestroy")
end

function Quest73000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4157Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4321Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20600Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
    self:LightNotifyTo(npcs.Npc20601Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4157Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc20600Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q73000Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7300001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7300004Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7300006Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7300016Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7300017Trigger", 3, false)
end

function Quest73000:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7300011")
        actorUtils.FinishQuestID(false, 7300011)
    end
end

function Quest73000:OnSubStart7300001(arg1)
    print("OnSubStart7300001")
    self:CreateQuestNpc(arg1, npcs.Npc20600Data.id, 1)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20600Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q7300001Trigger", "Actor/Gadget/Q7300001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_NPCCAVEOUT").pos, sceneData:GetDummyPoint(3, "WQL1_NPCCAVEOUT").rot, true, false, 3)
    end)
end

function Quest73000:OnSubFinish7300001(arg1)
    print("OnSubFinish7300001")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20600Data.alias)
    self:SetNavigationByMainId(73000, true)
end

function Quest73000:OnSubStart7300002(arg1)
    print("OnSubStart7300002")
end

function Quest73000:OnSubFinish7300002(arg1)
    print("OnSubFinish7300002")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73000:OnSubStart7300003(arg1)
    print("OnSubStart7300003")
end

function Quest73000:OnSubFinish7300003(arg1)
    print("OnSubFinish7300003")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest73000:OnSubStart7300004(arg1)
    print("OnSubStart7300004")
    actorMgr:CreateActorWithPos("Q7300004Trigger", "Actor/Gadget/Q7300004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAROBOTHOLE").pos, sceneData:GetDummyPoint(3, "WQL1_AREAROBOTHOLE").rot, true, false, 3)
end

function Quest73000:OnSubFinish7300004(arg1)
    print("OnSubFinish7300004")
end

function Quest73000:OnSubStart7300016(arg1)
    print("OnSubStart7300016")
    actorMgr:CreateActorWithPos("Q7300016Trigger", "Actor/Gadget/Q7300016Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAMID1").pos, sceneData:GetDummyPoint(3, "WQL1_AREAMID1").rot, true, false, 3)
end

function Quest73000:OnSubFinish7300016(arg1)
    print("OnSubFinish7300016")
    self:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73000:OnSubStart7300005(arg1)
    print("OnSubStart7300005")
end

function Quest73000:OnSubFinish7300005(arg1)
    print("OnSubFinish7300005")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest73000:OnSubStart7300017(arg1)
    print("OnSubStart7300017")
    actorMgr:CreateActorWithPos("Q7300017Trigger", "Actor/Gadget/Q7300017Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAMID2").pos, sceneData:GetDummyPoint(3, "WQL1_AREAMID2").rot, true, false, 3)
end

function Quest73000:OnSubFinish7300017(arg1)
    print("OnSubFinish7300017")
end

function Quest73000:OnSubStart7300006(arg1)
    print("OnSubStart7300006")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7300006Trigger", "Actor/Gadget/Q7300006Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_NPCROBOTBACK").pos, sceneData:GetDummyPoint(3, "WQL1_NPCROBOTBACK").rot, true, false, 3)
end

function Quest73000:OnSubFinish7300006(arg1)
    print("OnSubFinish7300006")
    self:NarratorOnlyTask(datas.NarratorTable6, nil, "")
end

function Quest73000:OnSubStart7300007(arg1)
    print("OnSubStart7300007")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73000:OnSubFinish7300007(arg1)
    print("OnSubFinish7300007")
end

function Quest73000:OnSubStart7300009(arg1)
    print("OnSubStart7300009")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20600Data.id, 2)
end

function Quest73000:OnSubFinish7300009(arg1)
    print("OnSubFinish7300009")
    self:SafeDestroyQuestNpc(npcs.Npc20600Data.alias, 3)
end

function Quest73000:OnSubStart7300010(arg1)
    print("OnSubStart7300010")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73000:OnSubFinish7300010(arg1)
    print("OnSubFinish7300010")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
end

function Quest73000:OnSubStart7300011(arg1)
    print("OnSubStart7300011")
end

function Quest73000:OnSubFinish7300011(arg1)
    print("OnSubFinish7300011")
end

function Quest73000:OnSubStart7300008(arg1)
    print("OnSubStart7300008")
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 1)
    actorMgr:CreateActorWithPos("Q73000Trigger", "Actor/Gadget/Q73000Trigger", 70900002, 0, {x = -1928.953, y = 207.565, z = 2569.992}, {x = 0.0, y = 355.235, z = 0.0}, true, false, 3)
end

function Quest73000:OnSubFinish7300008(arg1)
    print("OnSubFinish7300008")
end

function Quest73000:OnSubStart7300020(arg1)
    print("OnSubStart7300020")
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 1)
    self:RequestInteraction(npcs.Npc4157Data.alias)
end

function Quest73000:OnSubFinish7300020(arg1)
    print("OnSubFinish7300020")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 73000)
    self:SafeDestroyQuestNpc(npcs.Npc4157Data.alias, 3)
end

function Quest73000:OnSubStart7300012(arg1)
    print("OnSubStart7300012")
end

function Quest73000:OnSubFinish7300012(arg1)
    print("OnSubFinish7300012")
end

function Quest73000:OnSubStart7300013(arg1)
    print("OnSubStart7300013")
end

function Quest73000:OnSubFinish7300013(arg1)
    print("OnSubFinish7300013")
end

function Quest73000:OnSubStart7300014(arg1)
    print("OnSubStart7300014")
    self:RequestInteraction(npcs.Npc20645Data.alias)
end

function Quest73000:OnSubFinish7300014(arg1)
    print("OnSubFinish7300014")
end

function Quest73000:OnSubStart7300015(arg1)
    print("OnSubStart7300015")
end

function Quest73000:OnSubFinish7300015(arg1)
    print("OnSubFinish7300015")
end

function Quest73000:OnSubStart7300018(arg1)
    print("OnSubStart7300018")
end

function Quest73000:OnSubFinish7300018(arg1)
    print("OnSubFinish7300018")
end

function Quest73000:OnSubStart7300019(arg1)
    print("OnSubStart7300019")
end

function Quest73000:OnSubFinish7300019(arg1)
    print("OnSubFinish7300019")
end

return Quest73000

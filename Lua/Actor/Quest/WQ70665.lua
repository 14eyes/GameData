require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70665 = class("Quest70665", QuestActorProxy)
Quest70665.defaultAlias = "Quest70665"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70665:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70665:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066501"] = self.OnSubStart7066501,
        ["7066502"] = self.OnSubStart7066502,
        ["7066503"] = self.OnSubStart7066503,
        ["7066504"] = self.OnSubStart7066504,
        ["7066505"] = self.OnSubStart7066505,
        ["7066519"] = self.OnSubStart7066519,
        ["7066506"] = self.OnSubStart7066506,
        ["7066507"] = self.OnSubStart7066507,
        ["7066520"] = self.OnSubStart7066520,
        ["7066508"] = self.OnSubStart7066508,
        ["7066509"] = self.OnSubStart7066509,
        ["7066510"] = self.OnSubStart7066510,
        ["7066511"] = self.OnSubStart7066511,
        ["7066513"] = self.OnSubStart7066513,
        ["7066512"] = self.OnSubStart7066512,
        ["7066514"] = self.OnSubStart7066514,
        ["7066515"] = self.OnSubStart7066515,
        ["7066516"] = self.OnSubStart7066516,
        ["7066522"] = self.OnSubStart7066522,
        ["7066517"] = self.OnSubStart7066517,
        ["7066518"] = self.OnSubStart7066518,
        ["7066521"] = self.OnSubStart7066521,
        ["7066523"] = self.OnSubStart7066523
    }
end

function Quest70665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066501"] = self.OnSubFinish7066501,
        ["7066502"] = self.OnSubFinish7066502,
        ["7066503"] = self.OnSubFinish7066503,
        ["7066504"] = self.OnSubFinish7066504,
        ["7066505"] = self.OnSubFinish7066505,
        ["7066519"] = self.OnSubFinish7066519,
        ["7066506"] = self.OnSubFinish7066506,
        ["7066507"] = self.OnSubFinish7066507,
        ["7066520"] = self.OnSubFinish7066520,
        ["7066508"] = self.OnSubFinish7066508,
        ["7066509"] = self.OnSubFinish7066509,
        ["7066510"] = self.OnSubFinish7066510,
        ["7066511"] = self.OnSubFinish7066511,
        ["7066513"] = self.OnSubFinish7066513,
        ["7066512"] = self.OnSubFinish7066512,
        ["7066514"] = self.OnSubFinish7066514,
        ["7066515"] = self.OnSubFinish7066515,
        ["7066516"] = self.OnSubFinish7066516,
        ["7066522"] = self.OnSubFinish7066522,
        ["7066517"] = self.OnSubFinish7066517,
        ["7066518"] = self.OnSubFinish7066518,
        ["7066521"] = self.OnSubFinish7066521,
        ["7066523"] = self.OnSubFinish7066523
    }
end

function Quest70665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70665:Start()
    print("Start")
end

function Quest70665:OnDestroy()
    print("OnDestroy")
end

function Quest70665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70665:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70665:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7066504)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7066506)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7066515)
    end
end

function Quest70665:OnSubStart7066501(arg1)
    print("OnSubStart7066501")
    this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1587Data.id, 0)
    this:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1587Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc1019Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q70665Trigger", "Actor/Gadget/Q70665Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7066501_N1019").pos, sceneData:GetDummyPoint(3, "Q7066501_N1019").rot, true, false, 3)
end

function Quest70665:OnSubFinish7066501(arg1)
    print("OnSubFinish7066501")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1587Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc1019Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1587Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    end)
end

function Quest70665:OnSubStart7066502(arg1)
    print("OnSubStart7066502")
    this:CreateQuestNpc(arg1, npcs.Npc1431Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1713Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1712Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1431Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc1712Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest70665:OnSubFinish7066502(arg1)
    print("OnSubFinish7066502")
end

function Quest70665:OnSubStart7066503(arg1)
    print("OnSubStart7066503")
    this:LevelLoadFinishSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1431Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc1712Data.alias)
        v:DoFreeStyle(1190, true, nil, true, true, false, false)
        v:DisableInteeHeadCtrl(true)
        this:RequestInteraction(npcs.Npc1431Data.alias)
    end)
end

function Quest70665:OnSubFinish7066503(arg1)
    print("OnSubFinish7066503")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1431Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc1712Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1431Data.alias, 3)
    end)
end

function Quest70665:OnSubStart7066504(arg1)
    print("OnSubStart7066504")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 0)
    end)
end

function Quest70665:OnSubFinish7066504(arg1)
    print("OnSubFinish7066504")
end

function Quest70665:OnSubStart7066505(arg1)
    print("OnSubStart7066505")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
    end)
end

function Quest70665:OnSubFinish7066505(arg1)
    print("OnSubFinish7066505")
end

function Quest70665:OnSubStart7066519(arg1)
    print("OnSubStart7066519")
end

function Quest70665:OnSubFinish7066519(arg1)
    print("OnSubFinish7066519")
end

function Quest70665:OnSubStart7066506(arg1)
    print("OnSubStart7066506")
    actorMgr:CreateActorWithPos("Q70665Trigger2", "Actor/Gadget/Q70665Trigger2", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066504_N1061").pos, sceneData:GetDummyPoint(1076, "Q7066504_N1061").rot, true, false, 1076)
end

function Quest70665:OnSubFinish7066506(arg1)
    print("OnSubFinish7066506")
end

function Quest70665:OnSubStart7066507(arg1)
    print("OnSubStart7066507")
end

function Quest70665:OnSubFinish7066507(arg1)
    print("OnSubFinish7066507")
end

function Quest70665:OnSubStart7066520(arg1)
    print("OnSubStart7066520")
end

function Quest70665:OnSubFinish7066520(arg1)
    print("OnSubFinish7066520")
end

function Quest70665:OnSubStart7066508(arg1)
    print("OnSubStart7066508")
    actorMgr:CreateActorWithPos("Q70665Trigger3", "Actor/Gadget/Q70665Trigger3", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066504_N1019").pos, sceneData:GetDummyPoint(1076, "Q7066504_N1019").rot, true, false, 1076)
end

function Quest70665:OnSubFinish7066508(arg1)
    print("OnSubFinish7066508")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1061Data.alias, 3)
    end)
end

function Quest70665:OnSubStart7066509(arg1)
    print("OnSubStart7066509")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1061Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest70665:OnSubFinish7066509(arg1)
    print("OnSubFinish7066509")
end

function Quest70665:OnSubStart7066510(arg1)
    print("OnSubStart7066510")
    this:CreateQuestNpc(arg1, npcs.Npc1431Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1061Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1431Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest70665:OnSubFinish7066510(arg1)
    print("OnSubFinish7066510")
    this:DestroyQuestNpcActor(npcs.Npc1061Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1431Data.alias, 3)
end

function Quest70665:OnSubStart7066511(arg1)
    print("OnSubStart7066511")
    actorMgr:CreateActorWithPos("Q70665Trigger1", "Actor/Gadget/Q70665Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7066511_N1437").pos, sceneData:GetDummyPoint(3, "Q7066511_N1437").rot, true, false, 3)
end

function Quest70665:OnSubFinish7066511(arg1)
    print("OnSubFinish7066511")
end

function Quest70665:OnSubStart7066513(arg1)
    print("OnSubStart7066513")
end

function Quest70665:OnSubFinish7066513(arg1)
    print("OnSubFinish7066513")
end

function Quest70665:OnSubStart7066512(arg1)
    print("OnSubStart7066512")
    actorMgr:CreateActorWithPos("Q70665Trigger4", "Actor/Gadget/Q70665Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7066511_N1437").pos, sceneData:GetDummyPoint(3, "Q7066511_N1437").rot, true, false, 3)
end

function Quest70665:OnSubFinish7066512(arg1)
    print("OnSubFinish7066512")
    this:NarratorOnlyTaskByData(datas.Narrator_7066502, nil, 70665)
end

function Quest70665:OnSubStart7066514(arg1)
    print("OnSubStart7066514")
end

function Quest70665:OnSubFinish7066514(arg1)
    print("OnSubFinish7066514")
end

function Quest70665:OnSubStart7066515(arg1)
    print("OnSubStart7066515")
    this:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc10011Data.alias):SitOnChair(0)
    actorMgr:CreateActorWithPos("Q70665Trigger6", "Actor/Gadget/Q70665Trigger6", 70900002, 0, {x = 15.178, y = 0.01, z = 20.232}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1076)
end

function Quest70665:OnSubFinish7066515(arg1)
    print("OnSubFinish7066515")
end

function Quest70665:OnSubStart7066516(arg1)
    print("OnSubStart7066516")
end

function Quest70665:OnSubFinish7066516(arg1)
    print("OnSubFinish7066516")
end

function Quest70665:OnSubStart7066522(arg1)
    print("OnSubStart7066522")
end

function Quest70665:OnSubFinish7066522(arg1)
    print("OnSubFinish7066522")
end

function Quest70665:OnSubStart7066517(arg1)
    print("OnSubStart7066517")
    actorMgr:CreateActorWithPos("Q70665Trigger5", "Actor/Gadget/Q70665Trigger5", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066515_N10011").pos, sceneData:GetDummyPoint(1076, "Q7066515_N10011").rot, true, false, 1076)
end

function Quest70665:OnSubFinish7066517(arg1)
    print("OnSubFinish7066517")
    this:DestroyQuestNpcActor(npcs.Npc10012Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10011Data.alias, 3)
end

function Quest70665:OnSubStart7066518(arg1)
    print("OnSubStart7066518")
end

function Quest70665:OnSubFinish7066518(arg1)
    print("OnSubFinish7066518")
    this:DestroyQuestNpcActor(npcs.Npc1713Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1712Data.alias, 3)
end

function Quest70665:OnSubStart7066521(arg1)
    print("OnSubStart7066521")
end

function Quest70665:OnSubFinish7066521(arg1)
    print("OnSubFinish7066521")
end

function Quest70665:OnSubStart7066523(arg1)
    print("OnSubStart7066523")
end

function Quest70665:OnSubFinish7066523(arg1)
    print("OnSubFinish7066523")
end

return Quest70665

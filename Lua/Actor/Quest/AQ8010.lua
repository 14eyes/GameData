require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8010 = class("Quest8010", QuestActorProxy)
Quest8010.defaultAlias = "Quest8010"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest8010:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801002"] = self.OnSubStart801002,
        ["801003"] = self.OnSubStart801003,
        ["801018"] = self.OnSubStart801018,
        ["801004"] = self.OnSubStart801004,
        ["801019"] = self.OnSubStart801019,
        ["801005"] = self.OnSubStart801005,
        ["801020"] = self.OnSubStart801020,
        ["801006"] = self.OnSubStart801006,
        ["801021"] = self.OnSubStart801021,
        ["801007"] = self.OnSubStart801007,
        ["801033"] = self.OnSubStart801033,
        ["801008"] = self.OnSubStart801008,
        ["801022"] = self.OnSubStart801022,
        ["801010"] = self.OnSubStart801010,
        ["801023"] = self.OnSubStart801023,
        ["801011"] = self.OnSubStart801011,
        ["801024"] = self.OnSubStart801024,
        ["801001"] = self.OnSubStart801001,
        ["801025"] = self.OnSubStart801025,
        ["801012"] = self.OnSubStart801012,
        ["801030"] = self.OnSubStart801030,
        ["801013"] = self.OnSubStart801013,
        ["801026"] = self.OnSubStart801026,
        ["801032"] = self.OnSubStart801032,
        ["801014"] = self.OnSubStart801014,
        ["801031"] = self.OnSubStart801031,
        ["801027"] = self.OnSubStart801027,
        ["801015"] = self.OnSubStart801015,
        ["801028"] = self.OnSubStart801028,
        ["801016"] = self.OnSubStart801016,
        ["801029"] = self.OnSubStart801029,
        ["801009"] = self.OnSubStart801009,
        ["801017"] = self.OnSubStart801017
    }
end

function Quest8010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801002"] = self.OnSubFinish801002,
        ["801003"] = self.OnSubFinish801003,
        ["801018"] = self.OnSubFinish801018,
        ["801004"] = self.OnSubFinish801004,
        ["801019"] = self.OnSubFinish801019,
        ["801005"] = self.OnSubFinish801005,
        ["801020"] = self.OnSubFinish801020,
        ["801006"] = self.OnSubFinish801006,
        ["801021"] = self.OnSubFinish801021,
        ["801007"] = self.OnSubFinish801007,
        ["801033"] = self.OnSubFinish801033,
        ["801008"] = self.OnSubFinish801008,
        ["801022"] = self.OnSubFinish801022,
        ["801010"] = self.OnSubFinish801010,
        ["801023"] = self.OnSubFinish801023,
        ["801011"] = self.OnSubFinish801011,
        ["801024"] = self.OnSubFinish801024,
        ["801001"] = self.OnSubFinish801001,
        ["801025"] = self.OnSubFinish801025,
        ["801012"] = self.OnSubFinish801012,
        ["801030"] = self.OnSubFinish801030,
        ["801013"] = self.OnSubFinish801013,
        ["801026"] = self.OnSubFinish801026,
        ["801032"] = self.OnSubFinish801032,
        ["801014"] = self.OnSubFinish801014,
        ["801031"] = self.OnSubFinish801031,
        ["801027"] = self.OnSubFinish801027,
        ["801015"] = self.OnSubFinish801015,
        ["801028"] = self.OnSubFinish801028,
        ["801016"] = self.OnSubFinish801016,
        ["801029"] = self.OnSubFinish801029,
        ["801009"] = self.OnSubFinish801009,
        ["801017"] = self.OnSubFinish801017
    }
end

function Quest8010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest8010:Start()
    print("Start")
end

function Quest8010:OnDestroy()
    print("OnDestroy")
end

function Quest8010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8010:OnSubStart801002(arg1)
    print("OnSubStart801002")
    actorMgr:CreateActorWithPos("Q8010Trigger1", "Actor/Gadget/Q8010Trigger1", 70900002, 0, {x = -695.298, y = 232.0, z = 2233.789}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
    this:CreateLocalGadget(70710971, "3", {x = -722.307, y = 225.107, z = 2237.343}, {x = 0.0, y = 179.901, z = 0.0}, 20180, nil, nil, 0, false)
end

function Quest8010:OnSubFinish801002(arg1)
    print("OnSubFinish801002")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801003(arg1)
    print("OnSubStart801003")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13170Data.id, 0)
        actorMgr:CreateActorWithPos("Q8010Trigger5", "Actor/Gadget/Q8010Trigger5", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
        this:CreateLocalGadget(70710971, "3", {x = -722.307, y = 225.107, z = 2237.343}, {x = 0.0, y = 179.901, z = 0.0}, 20180, nil, nil, 0, false)
    end)
end

function Quest8010:OnSubFinish801003(arg1)
    print("OnSubFinish801003")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
        this:RemoveLocalGadget(70710971, "3")
    end)
end

function Quest8010:OnSubStart801018(arg1)
    print("OnSubStart801018")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801018(arg1)
    print("OnSubFinish801018")
end

function Quest8010:OnSubStart801004(arg1)
    print("OnSubStart801004")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13072Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    end)
end

function Quest8010:OnSubFinish801004(arg1)
    print("OnSubFinish801004")
end

function Quest8010:OnSubStart801019(arg1)
    print("OnSubStart801019")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801019(arg1)
    print("OnSubFinish801019")
end

function Quest8010:OnSubStart801005(arg1)
    print("OnSubStart801005")
end

function Quest8010:OnSubFinish801005(arg1)
    print("OnSubFinish801005")
end

function Quest8010:OnSubStart801020(arg1)
    print("OnSubStart801020")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801020(arg1)
    print("OnSubFinish801020")
end

function Quest8010:OnSubStart801006(arg1)
    print("OnSubStart801006")
end

function Quest8010:OnSubFinish801006(arg1)
    print("OnSubFinish801006")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801021(arg1)
    print("OnSubStart801021")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801021(arg1)
    print("OnSubFinish801021")
end

function Quest8010:OnSubStart801007(arg1)
    print("OnSubStart801007")
    actorMgr:CreateActorWithPos("Q8010Trigger2", "Actor/Gadget/Q8010Trigger2", 70900002, 0, {x = -826.367, y = 201.0, z = 2295.344}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
end

function Quest8010:OnSubFinish801007(arg1)
    print("OnSubFinish801007")
    this:SafeDestroyQuestNpc(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801033(arg1)
    print("OnSubStart801033")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801033(arg1)
    print("OnSubFinish801033")
end

function Quest8010:OnSubStart801008(arg1)
    print("OnSubStart801008")
end

function Quest8010:OnSubFinish801008(arg1)
    print("OnSubFinish801008")
end

function Quest8010:OnSubStart801022(arg1)
    print("OnSubStart801022")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801022(arg1)
    print("OnSubFinish801022")
end

function Quest8010:OnSubStart801010(arg1)
    print("OnSubStart801010")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13072Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest8010:OnSubFinish801010(arg1)
    print("OnSubFinish801010")
    this:GetQuestNpcActor(npcs.Npc13072Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801023(arg1)
    print("OnSubStart801023")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801023(arg1)
    print("OnSubFinish801023")
end

function Quest8010:OnSubStart801011(arg1)
    print("OnSubStart801011")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13072Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q8010Trigger8", "Actor/Gadget/Q8010Trigger8", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801011_N13072").pos, sceneData:GetDummyPoint(20180, "Q801011_N13072").rot, true, false, 20180)
    end)
end

function Quest8010:OnSubFinish801011(arg1)
    print("OnSubFinish801011")
end

function Quest8010:OnSubStart801024(arg1)
    print("OnSubStart801024")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801024(arg1)
    print("OnSubFinish801024")
end

function Quest8010:OnSubStart801001(arg1)
    print("OnSubStart801001")
    actorMgr:CreateActorWithPos("Q8010Trigger6", "Actor/Gadget/Q8010Trigger6", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801004_N13072").pos, sceneData:GetDummyPoint(20180, "Q801004_N13072").rot, true, false, 20180)
end

function Quest8010:OnSubFinish801001(arg1)
    print("OnSubFinish801001")
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801025(arg1)
    print("OnSubStart801025")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801025(arg1)
    print("OnSubFinish801025")
end

function Quest8010:OnSubStart801012(arg1)
    print("OnSubStart801012")
end

function Quest8010:OnSubFinish801012(arg1)
    print("OnSubFinish801012")
end

function Quest8010:OnSubStart801030(arg1)
    print("OnSubStart801030")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801030(arg1)
    print("OnSubFinish801030")
end

function Quest8010:OnSubStart801013(arg1)
    print("OnSubStart801013")
    this:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q8010Trigger3", "Actor/Gadget/Q8010Trigger3", 70900002, 0, {x = -727.918, y = 225.0, z = 2232.649}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
    end)
end

function Quest8010:OnSubFinish801013(arg1)
    print("OnSubFinish801013")
end

function Quest8010:OnSubStart801026(arg1)
    print("OnSubStart801026")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801026(arg1)
    print("OnSubFinish801026")
end

function Quest8010:OnSubStart801032(arg1)
    print("OnSubStart801032")
    this:GetQuestNpcActor(npcs.Npc13072Data.alias):DisableInteeHeadCtrl(true)
end

function Quest8010:OnSubFinish801032(arg1)
    print("OnSubFinish801032")
end

function Quest8010:OnSubStart801014(arg1)
    print("OnSubStart801014")
end

function Quest8010:OnSubFinish801014(arg1)
    print("OnSubFinish801014")
end

function Quest8010:OnSubStart801031(arg1)
    print("OnSubStart801031")
end

function Quest8010:OnSubFinish801031(arg1)
    print("OnSubFinish801031")
end

function Quest8010:OnSubStart801027(arg1)
    print("OnSubStart801027")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801027(arg1)
    print("OnSubFinish801027")
end

function Quest8010:OnSubStart801015(arg1)
    print("OnSubStart801015")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13072Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest8010:OnSubFinish801015(arg1)
    print("OnSubFinish801015")
end

function Quest8010:OnSubStart801028(arg1)
    print("OnSubStart801028")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13072Data.id, 0)
end

function Quest8010:OnSubFinish801028(arg1)
    print("OnSubFinish801028")
end

function Quest8010:OnSubStart801016(arg1)
    print("OnSubStart801016")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13072Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q8010Trigger9", "Actor/Gadget/Q8010Trigger9", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801011_N13072").pos, sceneData:GetDummyPoint(20180, "Q801011_N13072").rot, true, false, 20180)
end

function Quest8010:OnSubFinish801016(arg1)
    print("OnSubFinish801016")
    this:GetQuestNpcActor(npcs.Npc13072Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

function Quest8010:OnSubStart801029(arg1)
    print("OnSubStart801029")
    actorMgr:CreateActorWithPos("Q8010Trigger7", "Actor/Gadget/Q8010Trigger7", 70900002, 0, points.TPos_Q8010Trigger7.pos, points.TPos_Q8010Trigger7.rot, true, false, 20180)
end

function Quest8010:OnSubFinish801029(arg1)
    print("OnSubFinish801029")
end

function Quest8010:OnSubStart801009(arg1)
    print("OnSubStart801009")
end

function Quest8010:OnSubFinish801009(arg1)
    print("OnSubFinish801009")
end

function Quest8010:OnSubStart801017(arg1)
    print("OnSubStart801017")
    actorMgr:CreateActorWithPos("Q8010Trigger4", "Actor/Gadget/Q8010Trigger4", 70900002, 0, {x = -825.781, y = 201.0, z = 2295.357}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
end

function Quest8010:OnSubFinish801017(arg1)
    print("OnSubFinish801017")
    this:DestroyQuestNpcActor(npcs.Npc13170Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
end

return Quest8010

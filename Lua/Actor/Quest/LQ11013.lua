require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11013 = class("Quest11013", QuestActorProxy)
Quest11013.defaultAlias = "Quest11013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101301"] = self.OnSubStart1101301,
        ["1101326"] = self.OnSubStart1101326,
        ["1101305"] = self.OnSubStart1101305,
        ["1101306"] = self.OnSubStart1101306,
        ["1101307"] = self.OnSubStart1101307,
        ["1101308"] = self.OnSubStart1101308,
        ["1101309"] = self.OnSubStart1101309,
        ["1101310"] = self.OnSubStart1101310,
        ["1101311"] = self.OnSubStart1101311,
        ["1101323"] = self.OnSubStart1101323,
        ["1101312"] = self.OnSubStart1101312,
        ["1101313"] = self.OnSubStart1101313,
        ["1101314"] = self.OnSubStart1101314,
        ["1101315"] = self.OnSubStart1101315,
        ["1101316"] = self.OnSubStart1101316,
        ["1101317"] = self.OnSubStart1101317,
        ["1101318"] = self.OnSubStart1101318,
        ["1101319"] = self.OnSubStart1101319,
        ["1101320"] = self.OnSubStart1101320,
        ["1101321"] = self.OnSubStart1101321,
        ["1101322"] = self.OnSubStart1101322,
        ["1101324"] = self.OnSubStart1101324,
        ["1101325"] = self.OnSubStart1101325,
        ["1101302"] = self.OnSubStart1101302,
        ["1101303"] = self.OnSubStart1101303,
        ["1101304"] = self.OnSubStart1101304
    }
end

function Quest11013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101301"] = self.OnSubFinish1101301,
        ["1101326"] = self.OnSubFinish1101326,
        ["1101305"] = self.OnSubFinish1101305,
        ["1101306"] = self.OnSubFinish1101306,
        ["1101307"] = self.OnSubFinish1101307,
        ["1101308"] = self.OnSubFinish1101308,
        ["1101309"] = self.OnSubFinish1101309,
        ["1101310"] = self.OnSubFinish1101310,
        ["1101311"] = self.OnSubFinish1101311,
        ["1101323"] = self.OnSubFinish1101323,
        ["1101312"] = self.OnSubFinish1101312,
        ["1101313"] = self.OnSubFinish1101313,
        ["1101314"] = self.OnSubFinish1101314,
        ["1101315"] = self.OnSubFinish1101315,
        ["1101316"] = self.OnSubFinish1101316,
        ["1101317"] = self.OnSubFinish1101317,
        ["1101318"] = self.OnSubFinish1101318,
        ["1101319"] = self.OnSubFinish1101319,
        ["1101320"] = self.OnSubFinish1101320,
        ["1101321"] = self.OnSubFinish1101321,
        ["1101322"] = self.OnSubFinish1101322,
        ["1101324"] = self.OnSubFinish1101324,
        ["1101325"] = self.OnSubFinish1101325,
        ["1101302"] = self.OnSubFinish1101302,
        ["1101303"] = self.OnSubFinish1101303,
        ["1101304"] = self.OnSubFinish1101304
    }
end

function Quest11013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101301"] = self.OnSubFailed1101301,
        ["1101326"] = self.OnSubFailed1101326,
        ["1101305"] = self.OnSubFailed1101305,
        ["1101306"] = self.OnSubFailed1101306,
        ["1101307"] = self.OnSubFailed1101307,
        ["1101308"] = self.OnSubFailed1101308,
        ["1101309"] = self.OnSubFailed1101309,
        ["1101310"] = self.OnSubFailed1101310,
        ["1101311"] = self.OnSubFailed1101311,
        ["1101323"] = self.OnSubFailed1101323,
        ["1101312"] = self.OnSubFailed1101312,
        ["1101313"] = self.OnSubFailed1101313,
        ["1101314"] = self.OnSubFailed1101314,
        ["1101315"] = self.OnSubFailed1101315,
        ["1101316"] = self.OnSubFailed1101316,
        ["1101317"] = self.OnSubFailed1101317,
        ["1101318"] = self.OnSubFailed1101318,
        ["1101319"] = self.OnSubFailed1101319,
        ["1101320"] = self.OnSubFailed1101320,
        ["1101321"] = self.OnSubFailed1101321,
        ["1101322"] = self.OnSubFailed1101322,
        ["1101324"] = self.OnSubFailed1101324,
        ["1101325"] = self.OnSubFailed1101325,
        ["1101302"] = self.OnSubFailed1101302,
        ["1101303"] = self.OnSubFailed1101303,
        ["1101304"] = self.OnSubFailed1101304
    }
end

function Quest11013:Start()
    print("Start")
end

function Quest11013:OnDestroy()
    print("OnDestroy")
end

function Quest11013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11013:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11013:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11013:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest11013:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest11013:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11013:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11013:OnSubStart1101301(arg1)
    print("OnSubStart1101301")
    self:NpcCreate(arg1, npcs.Npc1627Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc10045Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc12344Data.id, 5)
    self:NpcCreate(arg1, npcs.Npc12345Data.id, 6)
    self:NpcCreate(arg1, npcs.Npc12346Data.id, 7)
    self:NpcCreate(arg1, npcs.Npc12371Data.id, 8)
    self:NpcCreate(arg1, npcs.Npc12348Data.id, 9)
    self:NpcCreate(arg1, npcs.Npc1016Data.id, 10)
    self:NpcCreate(arg1, npcs.Npc12372Data.id, 11)
    self:NpcCreate(arg1, npcs.Npc2143Data.id, 12)
end

function Quest11013:OnSubFinish1101301(arg1)
    print("OnSubFinish1101301")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1627Data.alias)
end

function Quest11013:OnSubFailed1101301(arg1)
    print("OnSubFailed1101301")
end

function Quest11013:OnSubStart1101326(arg1)
    print("OnSubStart1101326")
    actorMgr:CreateActorWithPos("Q11013TriggerDungeonStart", "Actor/Gadget/Q11013TriggerDungeonStart", 70900002, 0, sceneData:GetDummyPoint(3, "Q11013PlayerDungeon1Enter").pos, sceneData:GetDummyPoint(3, "Q11013PlayerDungeon1Enter").rot, true, false, 3)
end

function Quest11013:OnSubFinish1101326(arg1)
    print("OnSubFinish1101326")
    self:ActorDestroy("Q11013TriggerDungeonStart")
end

function Quest11013:OnSubFailed1101326(arg1)
    print("OnSubFailed1101326")
end

function Quest11013:OnSubStart1101305(arg1)
    print("OnSubStart1101305")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1045Data.id, 2, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFinish1101305(arg1)
    print("OnSubFinish1101305")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFailed1101305(arg1)
    print("OnSubFailed1101305")
end

function Quest11013:OnSubStart1101306(arg1)
    print("OnSubStart1101306")
end

function Quest11013:OnSubFinish1101306(arg1)
    print("OnSubFinish1101306")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3FairyFollowEnd)
end

function Quest11013:OnSubFailed1101306(arg1)
    print("OnSubFailed1101306")
end

function Quest11013:OnSubStart1101307(arg1)
    print("OnSubStart1101307")
end

function Quest11013:OnSubFinish1101307(arg1)
    print("OnSubFinish1101307")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc10045Data.alias)
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
end

function Quest11013:OnSubFailed1101307(arg1)
    print("OnSubFailed1101307")
end

function Quest11013:OnSubStart1101308(arg1)
    print("OnSubStart1101308")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1045Data.id, 1, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFinish1101308(arg1)
    print("OnSubFinish1101308")
end

function Quest11013:OnSubFailed1101308(arg1)
    print("OnSubFailed1101308")
end

function Quest11013:OnSubStart1101309(arg1)
    print("OnSubStart1101309")
end

function Quest11013:OnSubFinish1101309(arg1)
    print("OnSubFinish1101309")
end

function Quest11013:OnSubFailed1101309(arg1)
    print("OnSubFailed1101309")
end

function Quest11013:OnSubStart1101310(arg1)
    print("OnSubStart1101310")
end

function Quest11013:OnSubFinish1101310(arg1)
    print("OnSubFinish1101310")
end

function Quest11013:OnSubFailed1101310(arg1)
    print("OnSubFailed1101310")
end

function Quest11013:OnSubStart1101311(arg1)
    print("OnSubStart1101311")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 2, npcs.PaimonData.alias)
end

function Quest11013:OnSubFinish1101311(arg1)
    print("OnSubFinish1101311")
end

function Quest11013:OnSubFailed1101311(arg1)
    print("OnSubFailed1101311")
end

function Quest11013:OnSubStart1101323(arg1)
    print("OnSubStart1101323")
end

function Quest11013:OnSubFinish1101323(arg1)
    print("OnSubFinish1101323")
end

function Quest11013:OnSubFailed1101323(arg1)
    print("OnSubFailed1101323")
end

function Quest11013:OnSubStart1101312(arg1)
    print("OnSubStart1101312")
end

function Quest11013:OnSubFinish1101312(arg1)
    print("OnSubFinish1101312")
end

function Quest11013:OnSubFailed1101312(arg1)
    print("OnSubFailed1101312")
end

function Quest11013:OnSubStart1101313(arg1)
    print("OnSubStart1101313")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 2, npcs.PaimonData.alias)
end

function Quest11013:OnSubFinish1101313(arg1)
    print("OnSubFinish1101313")
    self:NpcDestroyWithBlackscreen(0, npcs.PaimonData.alias)
end

function Quest11013:OnSubFailed1101313(arg1)
    print("OnSubFailed1101313")
end

function Quest11013:OnSubStart1101314(arg1)
    print("OnSubStart1101314")
end

function Quest11013:OnSubFinish1101314(arg1)
    print("OnSubFinish1101314")
end

function Quest11013:OnSubFailed1101314(arg1)
    print("OnSubFailed1101314")
end

function Quest11013:OnSubStart1101315(arg1)
    print("OnSubStart1101315")
end

function Quest11013:OnSubFinish1101315(arg1)
    print("OnSubFinish1101315")
end

function Quest11013:OnSubFailed1101315(arg1)
    print("OnSubFailed1101315")
end

function Quest11013:OnSubStart1101316(arg1)
    print("OnSubStart1101316")
end

function Quest11013:OnSubFinish1101316(arg1)
    print("OnSubFinish1101316")
end

function Quest11013:OnSubFailed1101316(arg1)
    print("OnSubFailed1101316")
end

function Quest11013:OnSubStart1101317(arg1)
    print("OnSubStart1101317")
end

function Quest11013:OnSubFinish1101317(arg1)
    print("OnSubFinish1101317")
end

function Quest11013:OnSubFailed1101317(arg1)
    print("OnSubFailed1101317")
end

function Quest11013:OnSubStart1101318(arg1)
    print("OnSubStart1101318")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1045Data.id, 1, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFinish1101318(arg1)
    print("OnSubFinish1101318")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest11013:OnSubFailed1101318(arg1)
    print("OnSubFailed1101318")
end

function Quest11013:OnSubStart1101319(arg1)
    print("OnSubStart1101319")
    self:NpcCreate(arg1, npcs.Npc1045Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc2143Data.id, 3)
end

function Quest11013:OnSubFinish1101319(arg1)
    print("OnSubFinish1101319")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
end

function Quest11013:OnSubFailed1101319(arg1)
    print("OnSubFailed1101319")
end

function Quest11013:OnSubStart1101320(arg1)
    print("OnSubStart1101320")
    actorMgr:CreateActorWithPos("Q11013TriggerRestArea", "Actor/Gadget/Q11013TriggerRestArea", 70900002, 0, {x = -758.8436, y = 223.4326, z = 330.2336}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest11013:OnSubFinish1101320(arg1)
    print("OnSubFinish1101320")
    self:ActorDestroy("Q11013TriggerRestArea")
end

function Quest11013:OnSubFailed1101320(arg1)
    print("OnSubFailed1101320")
end

function Quest11013:OnSubStart1101321(arg1)
    print("OnSubStart1101321")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc1045Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc12332Data.id, 3)
end

function Quest11013:OnSubFinish1101321(arg1)
    print("OnSubFinish1101321")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFailed1101321(arg1)
    print("OnSubFailed1101321")
end

function Quest11013:OnSubStart1101322(arg1)
    print("OnSubStart1101322")
    self:NpcCreate(arg1, npcs.Npc10258Data.id, 3)
end

function Quest11013:OnSubFinish1101322(arg1)
    print("OnSubFinish1101322")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc12332Data.alias)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest11013:OnSubFailed1101322(arg1)
    print("OnSubFailed1101322")
end

function Quest11013:OnSubStart1101324(arg1)
    print("OnSubStart1101324")
end

function Quest11013:OnSubFinish1101324(arg1)
    print("OnSubFinish1101324")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc10258Data.alias)
end

function Quest11013:OnSubFailed1101324(arg1)
    print("OnSubFailed1101324")
end

function Quest11013:OnSubStart1101325(arg1)
    print("OnSubStart1101325")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1045Data.id, 1, npcs.Npc1045Data.alias)
end

function Quest11013:OnSubFinish1101325(arg1)
    print("OnSubFinish1101325")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
    self:NpcDestroy(npcs.Npc12344Data.alias, 3)
    self:NpcDestroy(npcs.Npc12345Data.alias, 3)
    self:NpcDestroy(npcs.Npc12346Data.alias, 3)
    self:NpcDestroy(npcs.Npc12371Data.alias, 3)
    self:NpcDestroy(npcs.Npc12348Data.alias, 3)
    self:NpcDestroy(npcs.Npc1016Data.alias, 3)
    self:NpcDestroy(npcs.Npc12372Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest11013:OnSubFailed1101325(arg1)
    print("OnSubFailed1101325")
end

function Quest11013:OnSubStart1101302(arg1)
    print("OnSubStart1101302")
end

function Quest11013:OnSubFinish1101302(arg1)
    print("OnSubFinish1101302")
end

function Quest11013:OnSubFailed1101302(arg1)
    print("OnSubFailed1101302")
end

function Quest11013:OnSubStart1101303(arg1)
    print("OnSubStart1101303")
end

function Quest11013:OnSubFinish1101303(arg1)
    print("OnSubFinish1101303")
end

function Quest11013:OnSubFailed1101303(arg1)
    print("OnSubFailed1101303")
end

function Quest11013:OnSubStart1101304(arg1)
    print("OnSubStart1101304")
end

function Quest11013:OnSubFinish1101304(arg1)
    print("OnSubFinish1101304")
end

function Quest11013:OnSubFailed1101304(arg1)
    print("OnSubFailed1101304")
end

return Quest11013

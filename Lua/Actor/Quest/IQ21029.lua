require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21029 = class("Quest21029", QuestActorProxy)
Quest21029.defaultAlias = "Quest21029"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest21029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102901"] = self.OnSubStart2102901,
        ["2102902"] = self.OnSubStart2102902,
        ["2102903"] = self.OnSubStart2102903,
        ["2102904"] = self.OnSubStart2102904,
        ["2102905"] = self.OnSubStart2102905,
        ["2102906"] = self.OnSubStart2102906,
        ["2102907"] = self.OnSubStart2102907,
        ["2102908"] = self.OnSubStart2102908,
        ["2102909"] = self.OnSubStart2102909,
        ["2102910"] = self.OnSubStart2102910
    }
end

function Quest21029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102901"] = self.OnSubFinish2102901,
        ["2102902"] = self.OnSubFinish2102902,
        ["2102903"] = self.OnSubFinish2102903,
        ["2102904"] = self.OnSubFinish2102904,
        ["2102905"] = self.OnSubFinish2102905,
        ["2102906"] = self.OnSubFinish2102906,
        ["2102907"] = self.OnSubFinish2102907,
        ["2102908"] = self.OnSubFinish2102908,
        ["2102909"] = self.OnSubFinish2102909,
        ["2102910"] = self.OnSubFinish2102910
    }
end

function Quest21029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21029:Start()
    print("Start")
end

function Quest21029:OnDestroy()
    print("OnDestroy")
end

function Quest21029:OnMainFinished(arg1)
    print("OnMainFinished")
    this:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
end

function Quest21029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    this:ActorDestroy("Q21029Trigger")
end

function Quest21029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21029:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21029:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21029:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest21029:OnSubStart2102901(arg1)
    print("OnSubStart2102901")
    this:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q21029Trigger", "Actor/Gadget/Q21029Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2102701_N10000005").pos, sceneData:GetDummyPoint(3, "Q2102701_N10000005").rot, true, false, 3)
end

function Quest21029:OnSubFinish2102901(arg1)
    print("OnSubFinish2102901")
    this:ActorDestroy("Q21029Trigger")
end

function Quest21029:OnSubStart2102902(arg1)
    print("OnSubStart2102902")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102902(arg1)
    print("OnSubFinish2102902")
end

function Quest21029:OnSubStart2102903(arg1)
    print("OnSubStart2102903")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102903(arg1)
    print("OnSubFinish2102903")
end

function Quest21029:OnSubStart2102904(arg1)
    print("OnSubStart2102904")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102904(arg1)
    print("OnSubFinish2102904")
end

function Quest21029:OnSubStart2102905(arg1)
    print("OnSubStart2102905")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102905(arg1)
    print("OnSubFinish2102905")
end

function Quest21029:OnSubStart2102906(arg1)
    print("OnSubStart2102906")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102906(arg1)
    print("OnSubFinish2102906")
end

function Quest21029:OnSubStart2102907(arg1)
    print("OnSubStart2102907")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102907(arg1)
    print("OnSubFinish2102907")
end

function Quest21029:OnSubStart2102908(arg1)
    print("OnSubStart2102908")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102908(arg1)
    print("OnSubFinish2102908")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

function Quest21029:OnSubStart2102909(arg1)
    print("OnSubStart2102909")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102909(arg1)
    print("OnSubFinish2102909")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

function Quest21029:OnSubStart2102910(arg1)
    print("OnSubStart2102910")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21029:OnSubFinish2102910(arg1)
    print("OnSubFinish2102910")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

return Quest21029

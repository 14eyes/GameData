require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24023 = class("Quest24023", QuestActorProxy)
Quest24023.defaultAlias = "Quest24023"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24023:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2402301"] = self.OnSubStart2402301,
        ["2402302"] = self.OnSubStart2402302,
        ["2402303"] = self.OnSubStart2402303,
        ["2402304"] = self.OnSubStart2402304,
        ["2402305"] = self.OnSubStart2402305,
        ["2402306"] = self.OnSubStart2402306,
        ["2402307"] = self.OnSubStart2402307,
        ["2402308"] = self.OnSubStart2402308,
        ["2402309"] = self.OnSubStart2402309,
        ["2402310"] = self.OnSubStart2402310,
        ["2402311"] = self.OnSubStart2402311,
        ["2402312"] = self.OnSubStart2402312,
        ["2402313"] = self.OnSubStart2402313,
        ["2402314"] = self.OnSubStart2402314,
        ["2402315"] = self.OnSubStart2402315,
        ["2402316"] = self.OnSubStart2402316,
        ["2402317"] = self.OnSubStart2402317,
        ["2402318"] = self.OnSubStart2402318,
        ["2402319"] = self.OnSubStart2402319,
        ["2402320"] = self.OnSubStart2402320,
        ["2402321"] = self.OnSubStart2402321,
        ["2402322"] = self.OnSubStart2402322,
        ["2402323"] = self.OnSubStart2402323,
        ["2402324"] = self.OnSubStart2402324,
        ["2402325"] = self.OnSubStart2402325
    }
end

function Quest24023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2402301"] = self.OnSubFinish2402301,
        ["2402302"] = self.OnSubFinish2402302,
        ["2402303"] = self.OnSubFinish2402303,
        ["2402304"] = self.OnSubFinish2402304,
        ["2402305"] = self.OnSubFinish2402305,
        ["2402306"] = self.OnSubFinish2402306,
        ["2402307"] = self.OnSubFinish2402307,
        ["2402308"] = self.OnSubFinish2402308,
        ["2402309"] = self.OnSubFinish2402309,
        ["2402310"] = self.OnSubFinish2402310,
        ["2402311"] = self.OnSubFinish2402311,
        ["2402312"] = self.OnSubFinish2402312,
        ["2402313"] = self.OnSubFinish2402313,
        ["2402314"] = self.OnSubFinish2402314,
        ["2402315"] = self.OnSubFinish2402315,
        ["2402316"] = self.OnSubFinish2402316,
        ["2402317"] = self.OnSubFinish2402317,
        ["2402318"] = self.OnSubFinish2402318,
        ["2402319"] = self.OnSubFinish2402319,
        ["2402320"] = self.OnSubFinish2402320,
        ["2402321"] = self.OnSubFinish2402321,
        ["2402322"] = self.OnSubFinish2402322,
        ["2402323"] = self.OnSubFinish2402323,
        ["2402324"] = self.OnSubFinish2402324,
        ["2402325"] = self.OnSubFinish2402325
    }
end

function Quest24023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24023:Start()
    print("Start")
end

function Quest24023:OnDestroy()
    print("OnDestroy")
end

function Quest24023:OnMainFinished(arg1)
    print("OnMainFinished")
    this:LightNotifyTo(npcs.Npc5211Data.alias, 0, true)
end

function Quest24023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24023:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5209Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5211Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q24023Trigger", 3, false)
end

function Quest24023:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest24023:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24023:OnSubStart2402301(arg1)
    print("OnSubStart2402301")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc5209Data.id, 0)
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24023:OnSubFinish2402301(arg1)
    print("OnSubFinish2402301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402302(arg1)
    print("OnSubStart2402302")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTriggerBlackEx("Q24023Trigger", 2402302, npcs.Npc5209Data.id, 0, 15, 0.5, 1, 0.5, 2)
    end)

    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24023:OnSubFinish2402302(arg1)
    print("OnSubFinish2402302")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402303(arg1)
    print("OnSubStart2402303")
end

function Quest24023:OnSubFinish2402303(arg1)
    print("OnSubFinish2402303")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402304(arg1)
    print("OnSubStart2402304")
end

function Quest24023:OnSubFinish2402304(arg1)
    print("OnSubFinish2402304")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402305(arg1)
    print("OnSubStart2402305")
end

function Quest24023:OnSubFinish2402305(arg1)
    print("OnSubFinish2402305")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402306(arg1)
    print("OnSubStart2402306")
end

function Quest24023:OnSubFinish2402306(arg1)
    print("OnSubFinish2402306")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402307(arg1)
    print("OnSubStart2402307")
end

function Quest24023:OnSubFinish2402307(arg1)
    print("OnSubFinish2402307")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402308(arg1)
    print("OnSubStart2402308")
end

function Quest24023:OnSubFinish2402308(arg1)
    print("OnSubFinish2402308")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402309(arg1)
    print("OnSubStart2402309")
end

function Quest24023:OnSubFinish2402309(arg1)
    print("OnSubFinish2402309")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402310(arg1)
    print("OnSubStart2402310")
end

function Quest24023:OnSubFinish2402310(arg1)
    print("OnSubFinish2402310")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402311(arg1)
    print("OnSubStart2402311")
end

function Quest24023:OnSubFinish2402311(arg1)
    print("OnSubFinish2402311")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402312(arg1)
    print("OnSubStart2402312")
end

function Quest24023:OnSubFinish2402312(arg1)
    print("OnSubFinish2402312")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402313(arg1)
    print("OnSubStart2402313")
end

function Quest24023:OnSubFinish2402313(arg1)
    print("OnSubFinish2402313")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402314(arg1)
    print("OnSubStart2402314")
end

function Quest24023:OnSubFinish2402314(arg1)
    print("OnSubFinish2402314")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402315(arg1)
    print("OnSubStart2402315")
end

function Quest24023:OnSubFinish2402315(arg1)
    print("OnSubFinish2402315")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402316(arg1)
    print("OnSubStart2402316")
end

function Quest24023:OnSubFinish2402316(arg1)
    print("OnSubFinish2402316")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402317(arg1)
    print("OnSubStart2402317")
end

function Quest24023:OnSubFinish2402317(arg1)
    print("OnSubFinish2402317")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402318(arg1)
    print("OnSubStart2402318")
end

function Quest24023:OnSubFinish2402318(arg1)
    print("OnSubFinish2402318")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402319(arg1)
    print("OnSubStart2402319")
end

function Quest24023:OnSubFinish2402319(arg1)
    print("OnSubFinish2402319")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402320(arg1)
    print("OnSubStart2402320")
end

function Quest24023:OnSubFinish2402320(arg1)
    print("OnSubFinish2402320")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402321(arg1)
    print("OnSubStart2402321")
end

function Quest24023:OnSubFinish2402321(arg1)
    print("OnSubFinish2402321")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402322(arg1)
    print("OnSubStart2402322")
end

function Quest24023:OnSubFinish2402322(arg1)
    print("OnSubFinish2402322")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402323(arg1)
    print("OnSubStart2402323")
end

function Quest24023:OnSubFinish2402323(arg1)
    print("OnSubFinish2402323")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402324(arg1)
    print("OnSubStart2402324")
end

function Quest24023:OnSubFinish2402324(arg1)
    print("OnSubFinish2402324")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24023:OnSubStart2402325(arg1)
    print("OnSubStart2402325")
end

function Quest24023:OnSubFinish2402325(arg1)
    print("OnSubFinish2402325")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

return Quest24023

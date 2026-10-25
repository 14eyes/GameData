require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75083 = class("Quest75083", QuestActorProxy)
Quest75083.defaultAlias = "Quest75083"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75083:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75083:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7508301"] = self.OnSubStart7508301,
        ["7508302"] = self.OnSubStart7508302,
        ["7508303"] = self.OnSubStart7508303,
        ["7508304"] = self.OnSubStart7508304,
        ["7508305"] = self.OnSubStart7508305,
        ["7508306"] = self.OnSubStart7508306,
        ["7508307"] = self.OnSubStart7508307,
        ["7508308"] = self.OnSubStart7508308,
        ["7508309"] = self.OnSubStart7508309,
        ["7508310"] = self.OnSubStart7508310,
        ["7508311"] = self.OnSubStart7508311,
        ["7508312"] = self.OnSubStart7508312,
        ["7508313"] = self.OnSubStart7508313,
        ["7508314"] = self.OnSubStart7508314,
        ["7508315"] = self.OnSubStart7508315,
        ["7508316"] = self.OnSubStart7508316,
        ["7508317"] = self.OnSubStart7508317
    }
end

function Quest75083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7508301"] = self.OnSubFinish7508301,
        ["7508302"] = self.OnSubFinish7508302,
        ["7508303"] = self.OnSubFinish7508303,
        ["7508304"] = self.OnSubFinish7508304,
        ["7508305"] = self.OnSubFinish7508305,
        ["7508306"] = self.OnSubFinish7508306,
        ["7508307"] = self.OnSubFinish7508307,
        ["7508308"] = self.OnSubFinish7508308,
        ["7508309"] = self.OnSubFinish7508309,
        ["7508310"] = self.OnSubFinish7508310,
        ["7508311"] = self.OnSubFinish7508311,
        ["7508312"] = self.OnSubFinish7508312,
        ["7508313"] = self.OnSubFinish7508313,
        ["7508314"] = self.OnSubFinish7508314,
        ["7508315"] = self.OnSubFinish7508315,
        ["7508316"] = self.OnSubFinish7508316,
        ["7508317"] = self.OnSubFinish7508317
    }
end

function Quest75083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75083:Start()
    print("Start")
end

function Quest75083:OnDestroy()
    print("OnDestroy")
end

function Quest75083:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75083:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75083:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest75083:OnSubStart7508301(arg1)
    print("OnSubStart7508301")
end

function Quest75083:OnSubFinish7508301(arg1)
    print("OnSubFinish7508301")
end

function Quest75083:OnSubStart7508302(arg1)
    print("OnSubStart7508302")
end

function Quest75083:OnSubFinish7508302(arg1)
    print("OnSubFinish7508302")
end

function Quest75083:OnSubStart7508303(arg1)
    print("OnSubStart7508303")
end

function Quest75083:OnSubFinish7508303(arg1)
    print("OnSubFinish7508303")
end

function Quest75083:OnSubStart7508304(arg1)
    print("OnSubStart7508304")
end

function Quest75083:OnSubFinish7508304(arg1)
    print("OnSubFinish7508304")
end

function Quest75083:OnSubStart7508305(arg1)
    print("OnSubStart7508305")
end

function Quest75083:OnSubFinish7508305(arg1)
    print("OnSubFinish7508305")
end

function Quest75083:OnSubStart7508306(arg1)
    print("OnSubStart7508306")
end

function Quest75083:OnSubFinish7508306(arg1)
    print("OnSubFinish7508306")
end

function Quest75083:OnSubStart7508307(arg1)
    print("OnSubStart7508307")
end

function Quest75083:OnSubFinish7508307(arg1)
    print("OnSubFinish7508307")
end

function Quest75083:OnSubStart7508308(arg1)
    print("OnSubStart7508308")
end

function Quest75083:OnSubFinish7508308(arg1)
    print("OnSubFinish7508308")
end

function Quest75083:OnSubStart7508309(arg1)
    print("OnSubStart7508309")
end

function Quest75083:OnSubFinish7508309(arg1)
    print("OnSubFinish7508309")
end

function Quest75083:OnSubStart7508310(arg1)
    print("OnSubStart7508310")
end

function Quest75083:OnSubFinish7508310(arg1)
    print("OnSubFinish7508310")
end

function Quest75083:OnSubStart7508311(arg1)
    print("OnSubStart7508311")
end

function Quest75083:OnSubFinish7508311(arg1)
    print("OnSubFinish7508311")
end

function Quest75083:OnSubStart7508312(arg1)
    print("OnSubStart7508312")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508312(arg1)
    print("OnSubFinish7508312")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75083:OnSubStart7508313(arg1)
    print("OnSubStart7508313")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508313(arg1)
    print("OnSubFinish7508313")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75083:OnSubStart7508314(arg1)
    print("OnSubStart7508314")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508314(arg1)
    print("OnSubFinish7508314")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75083:OnSubStart7508315(arg1)
    print("OnSubStart7508315")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508315(arg1)
    print("OnSubFinish7508315")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75083:OnSubStart7508316(arg1)
    print("OnSubStart7508316")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508316(arg1)
    print("OnSubFinish7508316")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

function Quest75083:OnSubStart7508317(arg1)
    print("OnSubStart7508317")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21515Data.id, 0, npcs.Npc21515Data.alias)
end

function Quest75083:OnSubFinish7508317(arg1)
    print("OnSubFinish7508317")
    this:SafeDestroyQuestNpc(npcs.Npc21515Data.alias, 3)
end

return Quest75083

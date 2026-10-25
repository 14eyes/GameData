require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20003 = class("Quest20003", QuestActorProxy)
Quest20003.defaultAlias = "Quest20003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2000301"] = self.OnSubStart2000301,
        ["2000302"] = self.OnSubStart2000302,
        ["2000303"] = self.OnSubStart2000303,
        ["2000304"] = self.OnSubStart2000304,
        ["2000306"] = self.OnSubStart2000306,
        ["2000307"] = self.OnSubStart2000307,
        ["2000308"] = self.OnSubStart2000308,
        ["2000305"] = self.OnSubStart2000305,
        ["2000309"] = self.OnSubStart2000309,
        ["2000310"] = self.OnSubStart2000310,
        ["2000311"] = self.OnSubStart2000311,
        ["2000312"] = self.OnSubStart2000312,
        ["2000313"] = self.OnSubStart2000313
    }
end

function Quest20003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2000301"] = self.OnSubFinish2000301,
        ["2000302"] = self.OnSubFinish2000302,
        ["2000303"] = self.OnSubFinish2000303,
        ["2000304"] = self.OnSubFinish2000304,
        ["2000306"] = self.OnSubFinish2000306,
        ["2000307"] = self.OnSubFinish2000307,
        ["2000308"] = self.OnSubFinish2000308,
        ["2000305"] = self.OnSubFinish2000305,
        ["2000309"] = self.OnSubFinish2000309,
        ["2000310"] = self.OnSubFinish2000310,
        ["2000311"] = self.OnSubFinish2000311,
        ["2000312"] = self.OnSubFinish2000312,
        ["2000313"] = self.OnSubFinish2000313
    }
end

function Quest20003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20003:Start()
    print("Start")
end

function Quest20003:OnDestroy()
    print("OnDestroy")
end

function Quest20003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12402Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc1648Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
end

function Quest20003:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20003:OnSubStart2000301(arg1)
    print("OnSubStart2000301")
    self:CreateQuestNpc(arg1, npcs.Npc1606Data.id, 1)
end

function Quest20003:OnSubFinish2000301(arg1)
    print("OnSubFinish2000301")
end

function Quest20003:OnSubStart2000302(arg1)
    print("OnSubStart2000302")
end

function Quest20003:OnSubFinish2000302(arg1)
    print("OnSubFinish2000302")
end

function Quest20003:OnSubStart2000303(arg1)
    print("OnSubStart2000303")
end

function Quest20003:OnSubFinish2000303(arg1)
    print("OnSubFinish2000303")
end

function Quest20003:OnSubStart2000304(arg1)
    print("OnSubStart2000304")
end

function Quest20003:OnSubFinish2000304(arg1)
    print("OnSubFinish2000304")
end

function Quest20003:OnSubStart2000306(arg1)
    print("OnSubStart2000306")
end

function Quest20003:OnSubFinish2000306(arg1)
    print("OnSubFinish2000306")
end

function Quest20003:OnSubStart2000307(arg1)
    print("OnSubStart2000307")
end

function Quest20003:OnSubFinish2000307(arg1)
    print("OnSubFinish2000307")
end

function Quest20003:OnSubStart2000308(arg1)
    print("OnSubStart2000308")
end

function Quest20003:OnSubFinish2000308(arg1)
    print("OnSubFinish2000308")
end

function Quest20003:OnSubStart2000305(arg1)
    print("OnSubStart2000305")
    self:CreateQuestNpc(arg1, npcs.Npc10099Data.id, 1)
end

function Quest20003:OnSubFinish2000305(arg1)
    print("OnSubFinish2000305")
    self:SafeDestroyQuestNpc(npcs.Npc10099Data.alias, 3)
end

function Quest20003:OnSubStart2000309(arg1)
    print("OnSubStart2000309")
    self:CreateQuestNpc(arg1, npcs.Npc12402Data.id, 1)
end

function Quest20003:OnSubFinish2000309(arg1)
    print("OnSubFinish2000309")
    self:SafeDestroyQuestNpc(npcs.Npc12402Data.alias, 1004)
end

function Quest20003:OnSubStart2000310(arg1)
    print("OnSubStart2000310")
    self:CreateQuestNpc(arg1, npcs.Npc1648Data.id, 1)
end

function Quest20003:OnSubFinish2000310(arg1)
    print("OnSubFinish2000310")
    self:NpcDestroyWithBlackscreen(1004, npcs.Npc1648Data.alias)
end

function Quest20003:OnSubStart2000311(arg1)
    print("OnSubStart2000311")
    self:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 1)
end

function Quest20003:OnSubFinish2000311(arg1)
    print("OnSubFinish2000311")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1419Data.alias)
end

function Quest20003:OnSubStart2000312(arg1)
    print("OnSubStart2000312")
    self:CreateQuestNpc(arg1, npcs.NPC1512Data.id, 1)
end

function Quest20003:OnSubFinish2000312(arg1)
    print("OnSubFinish2000312")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC1512Data.alias)
end

function Quest20003:OnSubStart2000313(arg1)
    print("OnSubStart2000313")
end

function Quest20003:OnSubFinish2000313(arg1)
    print("OnSubFinish2000313")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1606Data.alias)
end

return Quest20003

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23005 = class("Quest23005", QuestActorProxy)
Quest23005.defaultAlias = "Quest23005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300501"] = self.OnSubStart2300501,
        ["2300502"] = self.OnSubStart2300502,
        ["2300503"] = self.OnSubStart2300503,
        ["2300507"] = self.OnSubStart2300507,
        ["2300508"] = self.OnSubStart2300508,
        ["2300509"] = self.OnSubStart2300509,
        ["2300504"] = self.OnSubStart2300504,
        ["2300505"] = self.OnSubStart2300505,
        ["2300506"] = self.OnSubStart2300506
    }
end

function Quest23005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300501"] = self.OnSubFinish2300501,
        ["2300502"] = self.OnSubFinish2300502,
        ["2300503"] = self.OnSubFinish2300503,
        ["2300507"] = self.OnSubFinish2300507,
        ["2300508"] = self.OnSubFinish2300508,
        ["2300509"] = self.OnSubFinish2300509,
        ["2300504"] = self.OnSubFinish2300504,
        ["2300505"] = self.OnSubFinish2300505,
        ["2300506"] = self.OnSubFinish2300506
    }
end

function Quest23005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23005:Start()
    print("Start")
end

function Quest23005:OnDestroy()
    print("OnDestroy")
end

function Quest23005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23005:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4004Data.alias, 3)
end

function Quest23005:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23005:OnSubStart2300501(arg1)
    print("OnSubStart2300501")
end

function Quest23005:OnSubFinish2300501(arg1)
    print("OnSubFinish2300501")
end

function Quest23005:OnSubStart2300502(arg1)
    print("OnSubStart2300502")
    self:CreateQuestNpc(arg1, npcs.Npc4004Data.id, 1)
end

function Quest23005:OnSubFinish2300502(arg1)
    print("OnSubFinish2300502")
end

function Quest23005:OnSubStart2300503(arg1)
    print("OnSubStart2300503")
end

function Quest23005:OnSubFinish2300503(arg1)
    print("OnSubFinish2300503")
end

function Quest23005:OnSubStart2300507(arg1)
    print("OnSubStart2300507")
end

function Quest23005:OnSubFinish2300507(arg1)
    print("OnSubFinish2300507")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

function Quest23005:OnSubStart2300508(arg1)
    print("OnSubStart2300508")
end

function Quest23005:OnSubFinish2300508(arg1)
    print("OnSubFinish2300508")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

function Quest23005:OnSubStart2300509(arg1)
    print("OnSubStart2300509")
end

function Quest23005:OnSubFinish2300509(arg1)
    print("OnSubFinish2300509")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

function Quest23005:OnSubStart2300504(arg1)
    print("OnSubStart2300504")
    self:CreateQuestNpc(arg1, npcs.Npc4004Data.id, 1)
end

function Quest23005:OnSubFinish2300504(arg1)
    print("OnSubFinish2300504")
end

function Quest23005:OnSubStart2300505(arg1)
    print("OnSubStart2300505")
end

function Quest23005:OnSubFinish2300505(arg1)
    print("OnSubFinish2300505")
end

function Quest23005:OnSubStart2300506(arg1)
    print("OnSubStart2300506")
end

function Quest23005:OnSubFinish2300506(arg1)
    print("OnSubFinish2300506")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

return Quest23005

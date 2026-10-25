require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73005 = class("Quest73005", QuestActorProxy)
Quest73005.defaultAlias = "Quest73005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300501"] = self.OnSubStart7300501,
        ["7300502"] = self.OnSubStart7300502,
        ["7300522"] = self.OnSubStart7300522,
        ["7300503"] = self.OnSubStart7300503,
        ["7300504"] = self.OnSubStart7300504,
        ["7300507"] = self.OnSubStart7300507,
        ["7300508"] = self.OnSubStart7300508,
        ["7300509"] = self.OnSubStart7300509,
        ["7300513"] = self.OnSubStart7300513,
        ["7300510"] = self.OnSubStart7300510,
        ["7300523"] = self.OnSubStart7300523,
        ["7300524"] = self.OnSubStart7300524,
        ["7300511"] = self.OnSubStart7300511,
        ["7300512"] = self.OnSubStart7300512,
        ["7300514"] = self.OnSubStart7300514,
        ["7300516"] = self.OnSubStart7300516,
        ["7300517"] = self.OnSubStart7300517,
        ["7300518"] = self.OnSubStart7300518,
        ["7300519"] = self.OnSubStart7300519,
        ["7300520"] = self.OnSubStart7300520,
        ["7300521"] = self.OnSubStart7300521,
        ["7300515"] = self.OnSubStart7300515,
        ["7300506"] = self.OnSubStart7300506,
        ["7300505"] = self.OnSubStart7300505
    }
end

function Quest73005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300501"] = self.OnSubFinish7300501,
        ["7300502"] = self.OnSubFinish7300502,
        ["7300522"] = self.OnSubFinish7300522,
        ["7300503"] = self.OnSubFinish7300503,
        ["7300504"] = self.OnSubFinish7300504,
        ["7300507"] = self.OnSubFinish7300507,
        ["7300508"] = self.OnSubFinish7300508,
        ["7300509"] = self.OnSubFinish7300509,
        ["7300513"] = self.OnSubFinish7300513,
        ["7300510"] = self.OnSubFinish7300510,
        ["7300523"] = self.OnSubFinish7300523,
        ["7300524"] = self.OnSubFinish7300524,
        ["7300511"] = self.OnSubFinish7300511,
        ["7300512"] = self.OnSubFinish7300512,
        ["7300514"] = self.OnSubFinish7300514,
        ["7300516"] = self.OnSubFinish7300516,
        ["7300517"] = self.OnSubFinish7300517,
        ["7300518"] = self.OnSubFinish7300518,
        ["7300519"] = self.OnSubFinish7300519,
        ["7300520"] = self.OnSubFinish7300520,
        ["7300521"] = self.OnSubFinish7300521,
        ["7300515"] = self.OnSubFinish7300515,
        ["7300506"] = self.OnSubFinish7300506,
        ["7300505"] = self.OnSubFinish7300505
    }
end

function Quest73005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73005:Start()
    print("Start")
end

function Quest73005:OnDestroy()
    print("OnDestroy")
end

function Quest73005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73005:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73005:OnSubStart7300501(arg1)
    print("OnSubStart7300501")
end

function Quest73005:OnSubFinish7300501(arg1)
    print("OnSubFinish7300501")
end

function Quest73005:OnSubStart7300502(arg1)
    print("OnSubStart7300502")
end

function Quest73005:OnSubFinish7300502(arg1)
    print("OnSubFinish7300502")
end

function Quest73005:OnSubStart7300522(arg1)
    print("OnSubStart7300522")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
end

function Quest73005:OnSubFinish7300522(arg1)
    print("OnSubFinish7300522")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
end

function Quest73005:OnSubStart7300503(arg1)
    print("OnSubStart7300503")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300503(arg1)
    print("OnSubFinish7300503")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300504(arg1)
    print("OnSubStart7300504")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300504(arg1)
    print("OnSubFinish7300504")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300507(arg1)
    print("OnSubStart7300507")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300507(arg1)
    print("OnSubFinish7300507")
end

function Quest73005:OnSubStart7300508(arg1)
    print("OnSubStart7300508")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300508(arg1)
    print("OnSubFinish7300508")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300509(arg1)
    print("OnSubStart7300509")
end

function Quest73005:OnSubFinish7300509(arg1)
    print("OnSubFinish7300509")
end

function Quest73005:OnSubStart7300513(arg1)
    print("OnSubStart7300513")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300513(arg1)
    print("OnSubFinish7300513")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300510(arg1)
    print("OnSubStart7300510")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
end

function Quest73005:OnSubFinish7300510(arg1)
    print("OnSubFinish7300510")
end

function Quest73005:OnSubStart7300523(arg1)
    print("OnSubStart7300523")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
end

function Quest73005:OnSubFinish7300523(arg1)
    print("OnSubFinish7300523")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
end

function Quest73005:OnSubStart7300524(arg1)
    print("OnSubStart7300524")
end

function Quest73005:OnSubFinish7300524(arg1)
    print("OnSubFinish7300524")
end

function Quest73005:OnSubStart7300511(arg1)
    print("OnSubStart7300511")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300511(arg1)
    print("OnSubFinish7300511")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300512(arg1)
    print("OnSubStart7300512")
end

function Quest73005:OnSubFinish7300512(arg1)
    print("OnSubFinish7300512")
end

function Quest73005:OnSubStart7300514(arg1)
    print("OnSubStart7300514")
end

function Quest73005:OnSubFinish7300514(arg1)
    print("OnSubFinish7300514")
end

function Quest73005:OnSubStart7300516(arg1)
    print("OnSubStart7300516")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
end

function Quest73005:OnSubFinish7300516(arg1)
    print("OnSubFinish7300516")
end

function Quest73005:OnSubStart7300517(arg1)
    print("OnSubStart7300517")
end

function Quest73005:OnSubFinish7300517(arg1)
    print("OnSubFinish7300517")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
end

function Quest73005:OnSubStart7300518(arg1)
    print("OnSubStart7300518")
end

function Quest73005:OnSubFinish7300518(arg1)
    print("OnSubFinish7300518")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
end

function Quest73005:OnSubStart7300519(arg1)
    print("OnSubStart7300519")
end

function Quest73005:OnSubFinish7300519(arg1)
    print("OnSubFinish7300519")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
end

function Quest73005:OnSubStart7300520(arg1)
    print("OnSubStart7300520")
end

function Quest73005:OnSubFinish7300520(arg1)
    print("OnSubFinish7300520")
end

function Quest73005:OnSubStart7300521(arg1)
    print("OnSubStart7300521")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73005:OnSubFinish7300521(arg1)
    print("OnSubFinish7300521")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300515(arg1)
    print("OnSubStart7300515")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73005:OnSubFinish7300515(arg1)
    print("OnSubFinish7300515")
    self:SafeDestroyQuestNpc(npcs.Npc20576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20576Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300506(arg1)
    print("OnSubStart7300506")
end

function Quest73005:OnSubFinish7300506(arg1)
    print("OnSubFinish7300506")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73005:OnSubStart7300505(arg1)
    print("OnSubStart7300505")
end

function Quest73005:OnSubFinish7300505(arg1)
    print("OnSubFinish7300505")
end

return Quest73005

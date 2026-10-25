require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71063 = class("Quest71063", QuestActorProxy)
Quest71063.defaultAlias = "Quest71063"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71063:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71063:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106301"] = self.OnSubStart7106301,
        ["7106302"] = self.OnSubStart7106302,
        ["7106303"] = self.OnSubStart7106303,
        ["7106304"] = self.OnSubStart7106304,
        ["7106305"] = self.OnSubStart7106305,
        ["7106306"] = self.OnSubStart7106306,
        ["7106312"] = self.OnSubStart7106312,
        ["7106307"] = self.OnSubStart7106307,
        ["7106310"] = self.OnSubStart7106310,
        ["7106311"] = self.OnSubStart7106311,
        ["7106309"] = self.OnSubStart7106309,
        ["7106308"] = self.OnSubStart7106308
    }
end

function Quest71063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106301"] = self.OnSubFinish7106301,
        ["7106302"] = self.OnSubFinish7106302,
        ["7106303"] = self.OnSubFinish7106303,
        ["7106304"] = self.OnSubFinish7106304,
        ["7106305"] = self.OnSubFinish7106305,
        ["7106306"] = self.OnSubFinish7106306,
        ["7106312"] = self.OnSubFinish7106312,
        ["7106307"] = self.OnSubFinish7106307,
        ["7106310"] = self.OnSubFinish7106310,
        ["7106311"] = self.OnSubFinish7106311,
        ["7106309"] = self.OnSubFinish7106309,
        ["7106308"] = self.OnSubFinish7106308
    }
end

function Quest71063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71063:Start()
    print("Start")
end

function Quest71063:OnDestroy()
    print("OnDestroy")
end

function Quest71063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71063:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71063:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71063:OnSubStart7106301(arg1)
    print("OnSubStart7106301")
    self:CreateQuestNpc(arg1, npcs.Npc20526Data.id, 1)
end

function Quest71063:OnSubFinish7106301(arg1)
    print("OnSubFinish7106301")
end

function Quest71063:OnSubStart7106302(arg1)
    print("OnSubStart7106302")
    self:CreateQuestNpc(arg1, npcs.Npc20526Data.id, 1)
    self:RequestInteraction(npcs.Npc20526Data.alias)
end

function Quest71063:OnSubFinish7106302(arg1)
    print("OnSubFinish7106302")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20526Data.alias)
end

function Quest71063:OnSubStart7106303(arg1)
    print("OnSubStart7106303")
end

function Quest71063:OnSubFinish7106303(arg1)
    print("OnSubFinish7106303")
    self:ShowBlackScreen(0.5, 4, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end, nil, nil, "", false, true)
end

function Quest71063:OnSubStart7106304(arg1)
    print("OnSubStart7106304")
    self:CreateQuestNpc(arg1, npcs.Npc20526Data.id, 1)
end

function Quest71063:OnSubFinish7106304(arg1)
    print("OnSubFinish7106304")
end

function Quest71063:OnSubStart7106305(arg1)
    print("OnSubStart7106305")
end

function Quest71063:OnSubFinish7106305(arg1)
    print("OnSubFinish7106305")
end

function Quest71063:OnSubStart7106306(arg1)
    print("OnSubStart7106306")
end

function Quest71063:OnSubFinish7106306(arg1)
    print("OnSubFinish7106306")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20526Data.alias)
end

function Quest71063:OnSubStart7106312(arg1)
    print("OnSubStart7106312")
    self:NpcCreate(arg1, npcs.Npc20552Data.id, 1)
    self:RequestInteraction(npcs.Npc20552Data.alias)
end

function Quest71063:OnSubFinish7106312(arg1)
    print("OnSubFinish7106312")
end

function Quest71063:OnSubStart7106307(arg1)
    print("OnSubStart7106307")
end

function Quest71063:OnSubFinish7106307(arg1)
    print("OnSubFinish7106307")
end

function Quest71063:OnSubStart7106310(arg1)
    print("OnSubStart7106310")
end

function Quest71063:OnSubFinish7106310(arg1)
    print("OnSubFinish7106310")
end

function Quest71063:OnSubStart7106311(arg1)
    print("OnSubStart7106311")
    self:CreateQuestNpc(arg1, npcs.Npc2152Data.id, 1)
end

function Quest71063:OnSubFinish7106311(arg1)
    print("OnSubFinish7106311")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2152Data.alias)
end

function Quest71063:OnSubStart7106309(arg1)
    print("OnSubStart7106309")
end

function Quest71063:OnSubFinish7106309(arg1)
    print("OnSubFinish7106309")
    self:TransmitPlayerById(arg1, 1, function(arg1)
        arg1:RequestInteraction(npcs.Npc20526Data.alias)
    end)
end

function Quest71063:OnSubStart7106308(arg1)
    print("OnSubStart7106308")
end

function Quest71063:OnSubFinish7106308(arg1)
    print("OnSubFinish7106308")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20552Data.alias)
end

return Quest71063

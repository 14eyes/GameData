require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72203 = class("Quest72203", QuestActorProxy)
Quest72203.defaultAlias = "Quest72203"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72203:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220301"] = self.OnSubStart7220301,
        ["7220302"] = self.OnSubStart7220302,
        ["7220303"] = self.OnSubStart7220303,
        ["7220304"] = self.OnSubStart7220304,
        ["7220305"] = self.OnSubStart7220305,
        ["7220306"] = self.OnSubStart7220306,
        ["7220307"] = self.OnSubStart7220307,
        ["7220308"] = self.OnSubStart7220308
    }
end

function Quest72203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220301"] = self.OnSubFinish7220301,
        ["7220302"] = self.OnSubFinish7220302,
        ["7220303"] = self.OnSubFinish7220303,
        ["7220304"] = self.OnSubFinish7220304,
        ["7220305"] = self.OnSubFinish7220305,
        ["7220306"] = self.OnSubFinish7220306,
        ["7220307"] = self.OnSubFinish7220307,
        ["7220308"] = self.OnSubFinish7220308
    }
end

function Quest72203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220301"] = self.OnSubFailed7220301,
        ["7220302"] = self.OnSubFailed7220302,
        ["7220303"] = self.OnSubFailed7220303,
        ["7220304"] = self.OnSubFailed7220304,
        ["7220305"] = self.OnSubFailed7220305,
        ["7220306"] = self.OnSubFailed7220306,
        ["7220307"] = self.OnSubFailed7220307,
        ["7220308"] = self.OnSubFailed7220308
    }
end

function Quest72203:Start()
    print("Start")
end

function Quest72203:OnDestroy()
    print("OnDestroy")
end

function Quest72203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72203:OnSubStart7220301(arg1)
    print("OnSubStart7220301")
    self:CreateQuestNpc(arg1, npcs.Npc20425Data.id, 1)
end

function Quest72203:OnSubFinish7220301(arg1)
    print("OnSubFinish7220301")
    self:GetQuestNpcActor(npcs.Npc20425Data.alias):DestroyWithDisappear(false)
end

function Quest72203:OnSubFailed7220301(arg1)
    print("OnSubFailed7220301")
end

function Quest72203:OnSubStart7220302(arg1)
    print("OnSubStart7220302")
    self:CreateQuestNpc(arg1, npcs.Npc20425Data.id, 1)
end

function Quest72203:OnSubFinish7220302(arg1)
    print("OnSubFinish7220302")
    self:GetQuestNpcActor(npcs.Npc20425Data.alias):DestroyWithDisappear(false)
end

function Quest72203:OnSubFailed7220302(arg1)
    print("OnSubFailed7220302")
end

function Quest72203:OnSubStart7220303(arg1)
    print("OnSubStart7220303")
    self:CreateQuestNpc(arg1, npcs.Npc20425Data.id, 1)
end

function Quest72203:OnSubFinish7220303(arg1)
    print("OnSubFinish7220303")
    self:GetQuestNpcActor(npcs.Npc20425Data.alias):DestroyWithDisappear(false)
end

function Quest72203:OnSubFailed7220303(arg1)
    print("OnSubFailed7220303")
end

function Quest72203:OnSubStart7220304(arg1)
    print("OnSubStart7220304")
    self:CreateQuestNpc(arg1, npcs.Npc20425Data.id, 1)
end

function Quest72203:OnSubFinish7220304(arg1)
    print("OnSubFinish7220304")
    self:GetQuestNpcActor(npcs.Npc20425Data.alias):DestroyWithDisappear(false)
end

function Quest72203:OnSubFailed7220304(arg1)
    print("OnSubFailed7220304")
end

function Quest72203:OnSubStart7220305(arg1)
    print("OnSubStart7220305")
    self:CreateQuestNpc(arg1, npcs.Npc20425Data.id, 1)
end

function Quest72203:OnSubFinish7220305(arg1)
    print("OnSubFinish7220305")
    self:GetQuestNpcActor(npcs.Npc20425Data.alias):DestroyWithDisappear(false)
end

function Quest72203:OnSubFailed7220305(arg1)
    print("OnSubFailed7220305")
end

function Quest72203:OnSubStart7220306(arg1)
    print("OnSubStart7220306")
end

function Quest72203:OnSubFinish7220306(arg1)
    print("OnSubFinish7220306")
end

function Quest72203:OnSubFailed7220306(arg1)
    print("OnSubFailed7220306")
end

function Quest72203:OnSubStart7220307(arg1)
    print("OnSubStart7220307")
end

function Quest72203:OnSubFinish7220307(arg1)
    print("OnSubFinish7220307")
end

function Quest72203:OnSubFailed7220307(arg1)
    print("OnSubFailed7220307")
end

function Quest72203:OnSubStart7220308(arg1)
    print("OnSubStart7220308")
end

function Quest72203:OnSubFinish7220308(arg1)
    print("OnSubFinish7220308")
end

function Quest72203:OnSubFailed7220308(arg1)
    print("OnSubFailed7220308")
end

return Quest72203

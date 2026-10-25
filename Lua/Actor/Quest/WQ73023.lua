require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73023 = class("Quest73023", QuestActorProxy)
Quest73023.defaultAlias = "Quest73023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302301"] = self.OnSubStart7302301,
        ["7302302"] = self.OnSubStart7302302,
        ["7302303"] = self.OnSubStart7302303,
        ["7302306"] = self.OnSubStart7302306,
        ["7302318"] = self.OnSubStart7302318,
        ["7302307"] = self.OnSubStart7302307,
        ["7302308"] = self.OnSubStart7302308,
        ["7302311"] = self.OnSubStart7302311,
        ["7302312"] = self.OnSubStart7302312,
        ["7302313"] = self.OnSubStart7302313,
        ["7302314"] = self.OnSubStart7302314,
        ["7302315"] = self.OnSubStart7302315,
        ["7302316"] = self.OnSubStart7302316,
        ["7302317"] = self.OnSubStart7302317,
        ["7302304"] = self.OnSubStart7302304,
        ["7302305"] = self.OnSubStart7302305,
        ["7302309"] = self.OnSubStart7302309,
        ["7302310"] = self.OnSubStart7302310
    }
end

function Quest73023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302301"] = self.OnSubFinish7302301,
        ["7302302"] = self.OnSubFinish7302302,
        ["7302303"] = self.OnSubFinish7302303,
        ["7302306"] = self.OnSubFinish7302306,
        ["7302318"] = self.OnSubFinish7302318,
        ["7302307"] = self.OnSubFinish7302307,
        ["7302308"] = self.OnSubFinish7302308,
        ["7302311"] = self.OnSubFinish7302311,
        ["7302312"] = self.OnSubFinish7302312,
        ["7302313"] = self.OnSubFinish7302313,
        ["7302314"] = self.OnSubFinish7302314,
        ["7302315"] = self.OnSubFinish7302315,
        ["7302316"] = self.OnSubFinish7302316,
        ["7302317"] = self.OnSubFinish7302317,
        ["7302304"] = self.OnSubFinish7302304,
        ["7302305"] = self.OnSubFinish7302305,
        ["7302309"] = self.OnSubFinish7302309,
        ["7302310"] = self.OnSubFinish7302310
    }
end

function Quest73023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73023:Start()
    print("Start")
end

function Quest73023:OnDestroy()
    print("OnDestroy")
end

function Quest73023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73023:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73023:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73023:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73023:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73023:OnSubStart7302301(arg1)
    print("OnSubStart7302301")
end

function Quest73023:OnSubFinish7302301(arg1)
    print("OnSubFinish7302301")
end

function Quest73023:OnSubStart7302302(arg1)
    print("OnSubStart7302302")
end

function Quest73023:OnSubFinish7302302(arg1)
    print("OnSubFinish7302302")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end, nil, "", false, true)
end

function Quest73023:OnSubStart7302303(arg1)
    print("OnSubStart7302303")
    self:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
    end)
end

function Quest73023:OnSubFinish7302303(arg1)
    print("OnSubFinish7302303")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
end

function Quest73023:OnSubStart7302306(arg1)
    print("OnSubStart7302306")
end

function Quest73023:OnSubFinish7302306(arg1)
    print("OnSubFinish7302306")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    end, nil, "", false, true)
end

function Quest73023:OnSubStart7302318(arg1)
    print("OnSubStart7302318")
    self:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
        arg1_2:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    end)
end

function Quest73023:OnSubFinish7302318(arg1)
    print("OnSubFinish7302318")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
end

function Quest73023:OnSubStart7302307(arg1)
    print("OnSubStart7302307")
end

function Quest73023:OnSubFinish7302307(arg1)
    print("OnSubFinish7302307")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable2, nil, "")
    end, nil, "", false, true)
end

function Quest73023:OnSubStart7302308(arg1)
    print("OnSubStart7302308")
    self:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20632Data.id, 1)
    end)
end

function Quest73023:OnSubFinish7302308(arg1)
    print("OnSubFinish7302308")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
    self:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73023:OnSubStart7302311(arg1)
    print("OnSubStart7302311")
end

function Quest73023:OnSubFinish7302311(arg1)
    print("OnSubFinish7302311")
end

function Quest73023:OnSubStart7302312(arg1)
    print("OnSubStart7302312")
    self:NpcCreate(arg1, npcs.Npc20633Data.id, 1)
    self:TransmitPlayerById(arg1, 1)
    self:RequestInteraction(npcs.Npc20633Data.alias)
end

function Quest73023:OnSubFinish7302312(arg1)
    print("OnSubFinish7302312")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    self:NpcDestroy(npcs.Npc20633Data.alias, 3)
end

function Quest73023:OnSubStart7302313(arg1)
    print("OnSubStart7302313")
end

function Quest73023:OnSubFinish7302313(arg1)
    print("OnSubFinish7302313")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73023:OnSubStart7302314(arg1)
    print("OnSubStart7302314")
    self:CreateQuestNpc(arg1, npcs.Npc20632Data.id, 1)
    self:TransmitPlayerById(arg1, 2)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20633Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20632Data.alias)
    end)
end

function Quest73023:OnSubFinish7302314(arg1)
    print("OnSubFinish7302314")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
end

function Quest73023:OnSubStart7302315(arg1)
    print("OnSubStart7302315")
end

function Quest73023:OnSubFinish7302315(arg1)
    print("OnSubFinish7302315")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73023:OnSubStart7302316(arg1)
    print("OnSubStart7302316")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20633Data.id, 1)
    self:TransmitPlayerById(arg1, 3)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc20633Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc20633Data.alias)
    end)
end

function Quest73023:OnSubFinish7302316(arg1)
    print("OnSubFinish7302316")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20633Data.alias)
end

function Quest73023:OnSubStart7302317(arg1)
    print("OnSubStart7302317")
end

function Quest73023:OnSubFinish7302317(arg1)
    print("OnSubFinish7302317")
end

function Quest73023:OnSubStart7302304(arg1)
    print("OnSubStart7302304")
end

function Quest73023:OnSubFinish7302304(arg1)
    print("OnSubFinish7302304")
end

function Quest73023:OnSubStart7302305(arg1)
    print("OnSubStart7302305")
end

function Quest73023:OnSubFinish7302305(arg1)
    print("OnSubFinish7302305")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
end

function Quest73023:OnSubStart7302309(arg1)
    print("OnSubStart7302309")
end

function Quest73023:OnSubFinish7302309(arg1)
    print("OnSubFinish7302309")
end

function Quest73023:OnSubStart7302310(arg1)
    print("OnSubStart7302310")
end

function Quest73023:OnSubFinish7302310(arg1)
    print("OnSubFinish7302310")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20632Data.alias)
end

return Quest73023

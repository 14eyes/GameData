require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23042 = class("Quest23042", QuestActorProxy)
Quest23042.defaultAlias = "Quest23042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2304201"] = self.OnSubStart2304201,
        ["2304202"] = self.OnSubStart2304202,
        ["2304203"] = self.OnSubStart2304203,
        ["2304204"] = self.OnSubStart2304204,
        ["2304205"] = self.OnSubStart2304205,
        ["2304206"] = self.OnSubStart2304206
    }
end

function Quest23042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2304201"] = self.OnSubFinish2304201,
        ["2304202"] = self.OnSubFinish2304202,
        ["2304203"] = self.OnSubFinish2304203,
        ["2304204"] = self.OnSubFinish2304204,
        ["2304205"] = self.OnSubFinish2304205,
        ["2304206"] = self.OnSubFinish2304206
    }
end

function Quest23042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23042:Start()
    print("Start")
end

function Quest23042:OnDestroy()
    print("OnDestroy")
end

function Quest23042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23042:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4404Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4406Data.alias, 3)
    self:UnCallFunc(self.Bannpc)
end

function Quest23042:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23042:Bannpc()
    print("Bannpc")
    self:NotifyTo(npcs.Npc4405Data.alias, 1, true)
end

function Quest23042:OnSubStart2304201(arg1)
    print("OnSubStart2304201")
    self:CreateQuestNpc(arg1, npcs.Npc4404Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4405Data.id, 2)
end

function Quest23042:OnSubFinish2304201(arg1)
    print("OnSubFinish2304201")
end

function Quest23042:OnSubStart2304202(arg1)
    print("OnSubStart2304202")
    self:CreateQuestNpc(arg1, npcs.Npc4406Data.id, 1)
end

function Quest23042:OnSubFinish2304202(arg1)
    print("OnSubFinish2304202")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4406Data.alias)
end

function Quest23042:OnSubStart2304203(arg1)
    print("OnSubStart2304203")
end

function Quest23042:OnSubFinish2304203(arg1)
    print("OnSubFinish2304203")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
end

function Quest23042:OnSubStart2304204(arg1)
    print("OnSubStart2304204")
end

function Quest23042:OnSubFinish2304204(arg1)
    print("OnSubFinish2304204")
end

function Quest23042:OnSubStart2304205(arg1)
    print("OnSubStart2304205")
end

function Quest23042:OnSubFinish2304205(arg1)
    print("OnSubFinish2304205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4405Data.alias)
end

function Quest23042:OnSubStart2304206(arg1)
    print("OnSubStart2304206")
    self:CreateQuestNpc(arg1, npcs.Npc4404Data.id, 1)
    self:CallDelay(2, self.Bannpc)
end

function Quest23042:OnSubFinish2304206(arg1)
    print("OnSubFinish2304206")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4404Data.alias)
    self:LightNotifyTo(npcs.Npc4405Data.alias, 0, true)
end

return Quest23042

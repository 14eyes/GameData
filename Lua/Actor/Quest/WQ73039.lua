require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73039 = class("Quest73039", QuestActorProxy)
Quest73039.defaultAlias = "Quest73039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303901"] = self.OnSubStart7303901,
        ["7303902"] = self.OnSubStart7303902,
        ["7303905"] = self.OnSubStart7303905,
        ["7303904"] = self.OnSubStart7303904,
        ["7303911"] = self.OnSubStart7303911,
        ["7303903"] = self.OnSubStart7303903,
        ["7303909"] = self.OnSubStart7303909,
        ["7303910"] = self.OnSubStart7303910,
        ["7303912"] = self.OnSubStart7303912,
        ["7303906"] = self.OnSubStart7303906,
        ["7303907"] = self.OnSubStart7303907,
        ["7303908"] = self.OnSubStart7303908
    }
end

function Quest73039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303901"] = self.OnSubFinish7303901,
        ["7303902"] = self.OnSubFinish7303902,
        ["7303905"] = self.OnSubFinish7303905,
        ["7303904"] = self.OnSubFinish7303904,
        ["7303911"] = self.OnSubFinish7303911,
        ["7303903"] = self.OnSubFinish7303903,
        ["7303909"] = self.OnSubFinish7303909,
        ["7303910"] = self.OnSubFinish7303910,
        ["7303912"] = self.OnSubFinish7303912,
        ["7303906"] = self.OnSubFinish7303906,
        ["7303907"] = self.OnSubFinish7303907,
        ["7303908"] = self.OnSubFinish7303908
    }
end

function Quest73039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73039:Start()
    print("Start")
end

function Quest73039:OnDestroy()
    print("OnDestroy")
end

function Quest73039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73039:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73039:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73039:OnSubStart7303901(arg1)
    print("OnSubStart7303901")
    self:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20650Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20651Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20652Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20653Data.id, 5)
end

function Quest73039:OnSubFinish7303901(arg1)
    print("OnSubFinish7303901")
end

function Quest73039:OnSubStart7303902(arg1)
    print("OnSubStart7303902")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20649Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20650Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20651Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20652Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20653Data.id, 5)
end

function Quest73039:OnSubFinish7303902(arg1)
    print("OnSubFinish7303902")
end

function Quest73039:OnSubStart7303905(arg1)
    print("OnSubStart7303905")
end

function Quest73039:OnSubFinish7303905(arg1)
    print("OnSubFinish7303905")
end

function Quest73039:OnSubStart7303904(arg1)
    print("OnSubStart7303904")
end

function Quest73039:OnSubFinish7303904(arg1)
    print("OnSubFinish7303904")
end

function Quest73039:OnSubStart7303911(arg1)
    print("OnSubStart7303911")
    self:CreateQuestNpc(arg1, npcs.Npc20812Data.id, 1)
end

function Quest73039:OnSubFinish7303911(arg1)
    print("OnSubFinish7303911")
    self:SafeDestroyQuestNpc(npcs.Npc20812Data.alias, 3)
end

function Quest73039:OnSubStart7303903(arg1)
    print("OnSubStart7303903")
end

function Quest73039:OnSubFinish7303903(arg1)
    print("OnSubFinish7303903")
end

function Quest73039:OnSubStart7303909(arg1)
    print("OnSubStart7303909")
end

function Quest73039:OnSubFinish7303909(arg1)
    print("OnSubFinish7303909")
    self:NarratorOnlyTask(datas.Paimon_GetWater, nil, "")
end

function Quest73039:OnSubStart7303910(arg1)
    print("OnSubStart7303910")
end

function Quest73039:OnSubFinish7303910(arg1)
    print("OnSubFinish7303910")
end

function Quest73039:OnSubStart7303912(arg1)
    print("OnSubStart7303912")
end

function Quest73039:OnSubFinish7303912(arg1)
    print("OnSubFinish7303912")
end

function Quest73039:OnSubStart7303906(arg1)
    print("OnSubStart7303906")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
end

function Quest73039:OnSubFinish7303906(arg1)
    print("OnSubFinish7303906")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73039:OnSubStart7303907(arg1)
    print("OnSubStart7303907")
end

function Quest73039:OnSubFinish7303907(arg1)
    print("OnSubFinish7303907")
end

function Quest73039:OnSubStart7303908(arg1)
    print("OnSubStart7303908")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20650Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20651Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20652Data.id, 3)
    self:RequestInteraction(npcs.Npc20649Data.alias)
end

function Quest73039:OnSubFinish7303908(arg1)
    print("OnSubFinish7303908")
end

return Quest73039

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73058 = class("Quest73058", QuestActorProxy)
Quest73058.defaultAlias = "Quest73058"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73058:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73058:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305809"] = self.OnSubStart7305809,
        ["7305801"] = self.OnSubStart7305801,
        ["7305802"] = self.OnSubStart7305802,
        ["7305806"] = self.OnSubStart7305806,
        ["7305805"] = self.OnSubStart7305805,
        ["7305803"] = self.OnSubStart7305803,
        ["7305808"] = self.OnSubStart7305808,
        ["7305804"] = self.OnSubStart7305804,
        ["7305807"] = self.OnSubStart7305807
    }
end

function Quest73058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305809"] = self.OnSubFinish7305809,
        ["7305801"] = self.OnSubFinish7305801,
        ["7305802"] = self.OnSubFinish7305802,
        ["7305806"] = self.OnSubFinish7305806,
        ["7305805"] = self.OnSubFinish7305805,
        ["7305803"] = self.OnSubFinish7305803,
        ["7305808"] = self.OnSubFinish7305808,
        ["7305804"] = self.OnSubFinish7305804,
        ["7305807"] = self.OnSubFinish7305807
    }
end

function Quest73058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73058:Start()
    print("Start")
end

function Quest73058:OnDestroy()
    print("OnDestroy")
end

function Quest73058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73058:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73058:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73058:OnSubStart7305809(arg1)
    print("OnSubStart7305809")
end

function Quest73058:OnSubFinish7305809(arg1)
    print("OnSubFinish7305809")
end

function Quest73058:OnSubStart7305801(arg1)
    print("OnSubStart7305801")
end

function Quest73058:OnSubFinish7305801(arg1)
    print("OnSubFinish7305801")
end

function Quest73058:OnSubStart7305802(arg1)
    print("OnSubStart7305802")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20577Data.id, 1, npcs.Npc20577Data.alias)
end

function Quest73058:OnSubFinish7305802(arg1)
    print("OnSubFinish7305802")
end

function Quest73058:OnSubStart7305806(arg1)
    print("OnSubStart7305806")
end

function Quest73058:OnSubFinish7305806(arg1)
    print("OnSubFinish7305806")
end

function Quest73058:OnSubStart7305805(arg1)
    print("OnSubStart7305805")
end

function Quest73058:OnSubFinish7305805(arg1)
    print("OnSubFinish7305805")
end

function Quest73058:OnSubStart7305803(arg1)
    print("OnSubStart7305803")
    self:CreateQuestNpc(arg1, npcs.Npc20767Data.id, 1)
end

function Quest73058:OnSubFinish7305803(arg1)
    print("OnSubFinish7305803")
    self:NarratorOnlyTask(datas.NarratorTable03, nil, "")
end

function Quest73058:OnSubStart7305808(arg1)
    print("OnSubStart7305808")
end

function Quest73058:OnSubFinish7305808(arg1)
    print("OnSubFinish7305808")
end

function Quest73058:OnSubStart7305804(arg1)
    print("OnSubStart7305804")
end

function Quest73058:OnSubFinish7305804(arg1)
    print("OnSubFinish7305804")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73058:OnSubStart7305807(arg1)
    print("OnSubStart7305807")
end

function Quest73058:OnSubFinish7305807(arg1)
    print("OnSubFinish7305807")
end

return Quest73058

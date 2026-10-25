require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71121 = class("Quest71121", QuestActorProxy)
Quest71121.defaultAlias = "Quest71121"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71121:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7112101"] = self.OnSubStart7112101,
        ["7112102"] = self.OnSubStart7112102,
        ["7112105"] = self.OnSubStart7112105,
        ["7112103"] = self.OnSubStart7112103,
        ["7112104"] = self.OnSubStart7112104
    }
end

function Quest71121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7112101"] = self.OnSubFinish7112101,
        ["7112102"] = self.OnSubFinish7112102,
        ["7112105"] = self.OnSubFinish7112105,
        ["7112103"] = self.OnSubFinish7112103,
        ["7112104"] = self.OnSubFinish7112104
    }
end

function Quest71121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71121:Start()
    print("Start")
end

function Quest71121:OnDestroy()
    print("OnDestroy")
end

function Quest71121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71121:OnSubStart7112101(arg1)
    print("OnSubStart7112101")
    this:CreateQuestNpc(arg1, npcs.Npc21395Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21395Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest71121:OnSubFinish7112101(arg1)
    print("OnSubFinish7112101")
end

function Quest71121:OnSubStart7112102(arg1)
    print("OnSubStart7112102")
    this:CreateQuestNpc(arg1, npcs.Npc21395Data.id, 0)
end

function Quest71121:OnSubFinish7112102(arg1)
    print("OnSubFinish7112102")
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 1, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21395Data.alias, 71121)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.NpcToCave, 999, 997, -1, function(arg1)
                this:SafeDestroyQuestNpc(npcs.Npc21395Data.alias, 3)
            end, nil, nil, nil, nil, nil, false)

            this:CallDelayByQuest("2", 30, function(arg1)
                this:SafeDestroyQuestNpc(npcs.Npc21395Data.alias, 3)
            end)
        end)
    end)
end

function Quest71121:OnSubStart7112105(arg1)
    print("OnSubStart7112105")
end

function Quest71121:OnSubFinish7112105(arg1)
    print("OnSubFinish7112105")
end

function Quest71121:OnSubStart7112103(arg1)
    print("OnSubStart7112103")
    this:CreateQuestNpc(arg1, npcs.Npc21395Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21395Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest71121:OnSubFinish7112103(arg1)
    print("OnSubFinish7112103")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc21395Data.alias, 3)
    end, nil, nil, 711215107, false, true)
end

function Quest71121:OnSubStart7112104(arg1)
    print("OnSubStart7112104")
end

function Quest71121:OnSubFinish7112104(arg1)
    print("OnSubFinish7112104")
end

return Quest71121

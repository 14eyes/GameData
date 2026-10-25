require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71665 = class("Quest71665", QuestActorProxy)
Quest71665.defaultAlias = "Quest71665"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71665:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166501"] = self.OnSubStart7166501}
end

function Quest71665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166501"] = self.OnSubFinish7166501}
end

function Quest71665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71665:Start()
    print("Start")
end

function Quest71665:OnDestroy()
    print("OnDestroy")
end

function Quest71665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71665:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30545Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30545Data.alias, 0, true)
end

function Quest71665:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71665:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest71665:OnSubStart7166501(arg1)
    print("OnSubStart7166501")
    this:CreateQuestNpc(arg1, npcs.Npc30545Data.id, 0)
    this:LightNotifyTo(npcs.Npc30545Data.alias, 0, true)
end

function Quest71665:OnSubFinish7166501(arg1)
    print("OnSubFinish7166501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30545Data.alias)
    if this:GetQuestVar(7166501, 0) == 1 then
        this:ActionSafeCall(function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                this:ShowTutorialDialog(1737, function(arg1)
                    actorUtils.ShowContext("EffigyChallengeV5MainPage", 1)
                end)
            end)
        end)
    else
        this:ActionSafeCall(function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                this:ShowTutorialDialog(1737)
            end)
        end)
    end
end

return Quest71665

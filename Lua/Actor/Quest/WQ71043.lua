require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71043 = class("Quest71043", QuestActorProxy)
Quest71043.defaultAlias = "Quest71043"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104301"] = self.OnSubStart7104301,
        ["7104308"] = self.OnSubStart7104308,
        ["7104310"] = self.OnSubStart7104310,
        ["7104316"] = self.OnSubStart7104316,
        ["7104317"] = self.OnSubStart7104317,
        ["7104304"] = self.OnSubStart7104304,
        ["7104318"] = self.OnSubStart7104318,
        ["7104305"] = self.OnSubStart7104305,
        ["7104306"] = self.OnSubStart7104306,
        ["7104307"] = self.OnSubStart7104307,
        ["7104309"] = self.OnSubStart7104309,
        ["7104315"] = self.OnSubStart7104315,
        ["7104311"] = self.OnSubStart7104311,
        ["7104312"] = self.OnSubStart7104312,
        ["7104313"] = self.OnSubStart7104313,
        ["7104314"] = self.OnSubStart7104314,
        ["7104319"] = self.OnSubStart7104319,
        ["7104320"] = self.OnSubStart7104320
    }
end

function Quest71043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104301"] = self.OnSubFinish7104301,
        ["7104308"] = self.OnSubFinish7104308,
        ["7104310"] = self.OnSubFinish7104310,
        ["7104316"] = self.OnSubFinish7104316,
        ["7104317"] = self.OnSubFinish7104317,
        ["7104304"] = self.OnSubFinish7104304,
        ["7104318"] = self.OnSubFinish7104318,
        ["7104305"] = self.OnSubFinish7104305,
        ["7104306"] = self.OnSubFinish7104306,
        ["7104307"] = self.OnSubFinish7104307,
        ["7104309"] = self.OnSubFinish7104309,
        ["7104315"] = self.OnSubFinish7104315,
        ["7104311"] = self.OnSubFinish7104311,
        ["7104312"] = self.OnSubFinish7104312,
        ["7104313"] = self.OnSubFinish7104313,
        ["7104314"] = self.OnSubFinish7104314,
        ["7104319"] = self.OnSubFinish7104319,
        ["7104320"] = self.OnSubFinish7104320
    }
end

function Quest71043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71043:Start()
    print("Start")
end

function Quest71043:OnDestroy()
    print("OnDestroy")
end

function Quest71043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71043:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71043:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish7104319")
        self:FinishQuestID(false, 7104319)
    elseif arg1 == 2 then
        print("Finish7104320")
        self:FinishQuestID(false, 7104320)
    end
end

function Quest71043:OnSubStart7104301(arg1)
    print("OnSubStart7104301")
end

function Quest71043:OnSubFinish7104301(arg1)
    print("OnSubFinish7104301")
end

function Quest71043:OnSubStart7104308(arg1)
    print("OnSubStart7104308")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20588Data.id, 1, npcs.Npc20588Data.alias)
end

function Quest71043:OnSubFinish7104308(arg1)
    print("OnSubFinish7104308")
    self:SafeDestroyQuestNpc(npcs.Npc20588Data.alias, 6)
end

function Quest71043:OnSubStart7104310(arg1)
    print("OnSubStart7104310")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20587Data.id, 1, npcs.Npc20587Data.alias)
end

function Quest71043:OnSubFinish7104310(arg1)
    print("OnSubFinish7104310")
    self:SafeDestroyQuestNpc(npcs.Npc20587Data.alias, 6)
end

function Quest71043:OnSubStart7104316(arg1)
    print("OnSubStart7104316")
end

function Quest71043:OnSubFinish7104316(arg1)
    print("OnSubFinish7104316")
end

function Quest71043:OnSubStart7104317(arg1)
    print("OnSubStart7104317")
end

function Quest71043:OnSubFinish7104317(arg1)
    print("OnSubFinish7104317")
end

function Quest71043:OnSubStart7104304(arg1)
    print("OnSubStart7104304")
end

function Quest71043:OnSubFinish7104304(arg1)
    print("OnSubFinish7104304")
end

function Quest71043:OnSubStart7104318(arg1)
    print("OnSubStart7104318")
end

function Quest71043:OnSubFinish7104318(arg1)
    print("OnSubFinish7104318")
end

function Quest71043:OnSubStart7104305(arg1)
    print("OnSubStart7104305")
end

function Quest71043:OnSubFinish7104305(arg1)
    print("OnSubFinish7104305")
end

function Quest71043:OnSubStart7104306(arg1)
    print("OnSubStart7104306")
end

function Quest71043:OnSubFinish7104306(arg1)
    print("OnSubFinish7104306")
end

function Quest71043:OnSubStart7104307(arg1)
    print("OnSubStart7104307")
end

function Quest71043:OnSubFinish7104307(arg1)
    print("OnSubFinish7104307")
end

function Quest71043:OnSubStart7104309(arg1)
    print("OnSubStart7104309")
end

function Quest71043:OnSubFinish7104309(arg1)
    print("OnSubFinish7104309")
end

function Quest71043:OnSubStart7104315(arg1)
    print("OnSubStart7104315")
end

function Quest71043:OnSubFinish7104315(arg1)
    print("OnSubFinish7104315")
end

function Quest71043:OnSubStart7104311(arg1)
    print("OnSubStart7104311")
end

function Quest71043:OnSubFinish7104311(arg1)
    print("OnSubFinish7104311")
end

function Quest71043:OnSubStart7104312(arg1)
    print("OnSubStart7104312")
    self:PlayCutsceneIndex("7104303", function(arg1)
        actorUtils.FinishQuestID(false, 7104312)
    end, nil, nil, false)
end

function Quest71043:OnSubFinish7104312(arg1)
    print("OnSubFinish7104312")
end

function Quest71043:OnSubStart7104313(arg1)
    print("OnSubStart7104313")
end

function Quest71043:OnSubFinish7104313(arg1)
    print("OnSubFinish7104313")
end

function Quest71043:OnSubStart7104314(arg1)
    print("OnSubStart7104314")
end

function Quest71043:OnSubFinish7104314(arg1)
    print("OnSubFinish7104314")
end

function Quest71043:OnSubStart7104319(arg1)
    print("OnSubStart7104319")
end

function Quest71043:OnSubFinish7104319(arg1)
    print("OnSubFinish7104319")
end

function Quest71043:OnSubStart7104320(arg1)
    print("OnSubStart7104320")
end

function Quest71043:OnSubFinish7104320(arg1)
    print("OnSubFinish7104320")
end

return Quest71043

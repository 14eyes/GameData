require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79022 = class("Quest79022", QuestActorProxy)
Quest79022.defaultAlias = "Quest79022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902214"] = self.OnSubStart7902214,
        ["7902201"] = self.OnSubStart7902201,
        ["7902210"] = self.OnSubStart7902210,
        ["7902202"] = self.OnSubStart7902202,
        ["7902205"] = self.OnSubStart7902205,
        ["7902213"] = self.OnSubStart7902213,
        ["7902206"] = self.OnSubStart7902206,
        ["7902207"] = self.OnSubStart7902207,
        ["7902208"] = self.OnSubStart7902208,
        ["7902211"] = self.OnSubStart7902211,
        ["7902212"] = self.OnSubStart7902212
    }
end

function Quest79022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902214"] = self.OnSubFinish7902214,
        ["7902201"] = self.OnSubFinish7902201,
        ["7902210"] = self.OnSubFinish7902210,
        ["7902202"] = self.OnSubFinish7902202,
        ["7902205"] = self.OnSubFinish7902205,
        ["7902213"] = self.OnSubFinish7902213,
        ["7902206"] = self.OnSubFinish7902206,
        ["7902207"] = self.OnSubFinish7902207,
        ["7902208"] = self.OnSubFinish7902208,
        ["7902211"] = self.OnSubFinish7902211,
        ["7902212"] = self.OnSubFinish7902212
    }
end

function Quest79022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7902210"] = self.OnSubFailed7902210}
end

function Quest79022:Start()
    print("Start")
end

function Quest79022:OnDestroy()
    print("OnDestroy")
end

function Quest79022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20620Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc20621Data.alias, 9)
end

function Quest79022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest79022:OnSubStart7902201(arg1)
    print("OnSubStart7902201")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 2)
end

function Quest79022:OnSubFinish7902201(arg1)
    print("OnSubFinish7902201")
end

function Quest79022:OnSubStart7902210(arg1)
    print("OnSubStart7902210")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 0)
end

function Quest79022:OnSubFinish7902210(arg1)
    print("OnSubFinish7902210")
end

function Quest79022:OnSubFailed7902210(arg1)
    print("OnSubFailed7902210")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest79022:OnSubStart7902202(arg1)
    print("OnSubStart7902202")
end

function Quest79022:OnSubFinish7902202(arg1)
    print("OnSubFinish7902202")
end

function Quest79022:OnSubStart7902205(arg1)
    print("OnSubStart7902205")
end

function Quest79022:OnSubFinish7902205(arg1)
    print("OnSubFinish7902205")
end

function Quest79022:OnSubStart7902213(arg1)
    print("OnSubStart7902213")
end

function Quest79022:OnSubFinish7902213(arg1)
    print("OnSubFinish7902213")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "Quest_Black_Q7902213", false, true)
    self:NarratorOnlyTask(datas.tothecave, nil, "")
end

function Quest79022:OnSubStart7902206(arg1)
    print("OnSubStart7902206")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 2)
end

function Quest79022:OnSubFinish7902206(arg1)
    print("OnSubFinish7902206")
end

function Quest79022:OnSubStart7902207(arg1)
    print("OnSubStart7902207")
end

function Quest79022:OnSubFinish7902207(arg1)
    print("OnSubFinish7902207")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "Quest_Black_Q7902207", false, true)
end

function Quest79022:OnSubStart7902208(arg1)
    print("OnSubStart7902208")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 2)
end

function Quest79022:OnSubFinish7902208(arg1)
    print("OnSubFinish7902208")
end

function Quest79022:OnSubStart7902211(arg1)
    print("OnSubStart7902211")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 2)
    if self:GetQuestVar(7902211, 0) == 0 then
        self:NarratorOnlyTask(datas.totheother, function(arg1)
            arg1:SetQuestVarByMainId(0, 1)
        end, 79022)
    end
end

function Quest79022:OnSubFinish7902211(arg1)
    print("OnSubFinish7902211")
end

function Quest79022:OnSubStart7902212(arg1)
    print("OnSubStart7902212")
end

function Quest79022:OnSubFinish7902212(arg1)
    print("OnSubFinish7902212")
end

return Quest79022

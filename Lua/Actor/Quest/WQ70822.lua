require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70822 = class("Quest70822", QuestActorProxy)
Quest70822.defaultAlias = "Quest70822"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70822:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70822:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082201"] = self.OnSubStart7082201,
        ["7082202"] = self.OnSubStart7082202,
        ["7082203"] = self.OnSubStart7082203,
        ["7082204"] = self.OnSubStart7082204,
        ["7082205"] = self.OnSubStart7082205,
        ["7082206"] = self.OnSubStart7082206,
        ["7082207"] = self.OnSubStart7082207,
        ["7082208"] = self.OnSubStart7082208,
        ["7082212"] = self.OnSubStart7082212,
        ["7082213"] = self.OnSubStart7082213,
        ["7082209"] = self.OnSubStart7082209,
        ["7082210"] = self.OnSubStart7082210,
        ["7082211"] = self.OnSubStart7082211
    }
end

function Quest70822:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082201"] = self.OnSubFinish7082201,
        ["7082202"] = self.OnSubFinish7082202,
        ["7082203"] = self.OnSubFinish7082203,
        ["7082204"] = self.OnSubFinish7082204,
        ["7082205"] = self.OnSubFinish7082205,
        ["7082206"] = self.OnSubFinish7082206,
        ["7082207"] = self.OnSubFinish7082207,
        ["7082208"] = self.OnSubFinish7082208,
        ["7082212"] = self.OnSubFinish7082212,
        ["7082213"] = self.OnSubFinish7082213,
        ["7082209"] = self.OnSubFinish7082209,
        ["7082210"] = self.OnSubFinish7082210,
        ["7082211"] = self.OnSubFinish7082211
    }
end

function Quest70822:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70822:Start()
    print("Start")
end

function Quest70822:OnDestroy()
    print("OnDestroy")
end

function Quest70822:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2072Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2046Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2082Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2099Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2013Data.alias, 0, true)
end

function Quest70822:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70822:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc2072Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2046Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2082Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2099Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2013Data.alias, 0, true)
end

function Quest70822:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest70822:OnSubStart7082201(arg1)
    print("OnSubStart7082201")
end

function Quest70822:OnSubFinish7082201(arg1)
    print("OnSubFinish7082201")
    self:SetQuestVar(7082201, 3, 1)
end

function Quest70822:OnSubStart7082202(arg1)
    print("OnSubStart7082202")
    self:CreateQuestNpc(arg1, npcs.Npc2046Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2082Data.id, 2)
end

function Quest70822:OnSubFinish7082202(arg1)
    print("OnSubFinish7082202")
end

function Quest70822:OnSubStart7082203(arg1)
    print("OnSubStart7082203")
end

function Quest70822:OnSubFinish7082203(arg1)
    print("OnSubFinish7082203")
end

function Quest70822:OnSubStart7082204(arg1)
    print("OnSubStart7082204")
end

function Quest70822:OnSubFinish7082204(arg1)
    print("OnSubFinish7082204")
    self:SetQuestVar(7082204, 0, 1)
end

function Quest70822:OnSubStart7082205(arg1)
    print("OnSubStart7082205")
    self:CreateQuestNpc(arg1, npcs.Npc2072Data.id, 1)
end

function Quest70822:OnSubFinish7082205(arg1)
    print("OnSubFinish7082205")
end

function Quest70822:OnSubStart7082206(arg1)
    print("OnSubStart7082206")
    self:CreateQuestNpc(arg1, npcs.Npc2013Data.id, 1)
end

function Quest70822:OnSubFinish7082206(arg1)
    print("OnSubFinish7082206")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2013Data.alias)
end

function Quest70822:OnSubStart7082207(arg1)
    print("OnSubStart7082207")
end

function Quest70822:OnSubFinish7082207(arg1)
    print("OnSubFinish7082207")
    self:SetQuestVar(7082207, 1, 1)
end

function Quest70822:OnSubStart7082208(arg1)
    print("OnSubStart7082208")
    self:CreateQuestNpc(arg1, npcs.Npc2077Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2099Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2085Data.id, 3)
end

function Quest70822:OnSubFinish7082208(arg1)
    print("OnSubFinish7082208")
    self:SetQuestVar(7082208, 2, 1)
end

function Quest70822:OnSubStart7082212(arg1)
    print("OnSubStart7082212")
end

function Quest70822:OnSubFinish7082212(arg1)
    print("OnSubFinish7082212")
end

function Quest70822:OnSubStart7082213(arg1)
    print("OnSubStart7082213")
end

function Quest70822:OnSubFinish7082213(arg1)
    print("OnSubFinish7082213")
end

function Quest70822:OnSubStart7082209(arg1)
    print("OnSubStart7082209")
end

function Quest70822:OnSubFinish7082209(arg1)
    print("OnSubFinish7082209")
end

function Quest70822:OnSubStart7082210(arg1)
    print("OnSubStart7082210")
    self:SetQuestVar(7082210, 2, 0)
end

function Quest70822:OnSubFinish7082210(arg1)
    print("OnSubFinish7082210")
    self:SetQuestVar(7082210, 2, 2)
end

function Quest70822:OnSubStart7082211(arg1)
    print("OnSubStart7082211")
end

function Quest70822:OnSubFinish7082211(arg1)
    print("OnSubFinish7082211")
    self:SafeDestroyQuestNpc(npcs.Npc2077Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2072Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2082Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2099Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2085Data.alias, 3)
end

return Quest70822

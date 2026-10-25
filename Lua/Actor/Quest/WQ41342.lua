require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41342 = class("Quest41342", QuestActorProxy)
Quest41342.defaultAlias = "Quest41342"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest41342:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest41342:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4134201"] = self.OnSubStart4134201,
        ["4134202"] = self.OnSubStart4134202,
        ["4134203"] = self.OnSubStart4134203,
        ["4134204"] = self.OnSubStart4134204,
        ["4134205"] = self.OnSubStart4134205,
        ["4134206"] = self.OnSubStart4134206,
        ["4134207"] = self.OnSubStart4134207,
        ["4134208"] = self.OnSubStart4134208,
        ["4134209"] = self.OnSubStart4134209,
        ["4134210"] = self.OnSubStart4134210,
        ["4134211"] = self.OnSubStart4134211,
        ["4134212"] = self.OnSubStart4134212,
        ["4134213"] = self.OnSubStart4134213,
        ["4134214"] = self.OnSubStart4134214,
        ["4134215"] = self.OnSubStart4134215
    }
end

function Quest41342:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4134201"] = self.OnSubFinish4134201,
        ["4134202"] = self.OnSubFinish4134202,
        ["4134203"] = self.OnSubFinish4134203,
        ["4134204"] = self.OnSubFinish4134204,
        ["4134205"] = self.OnSubFinish4134205,
        ["4134206"] = self.OnSubFinish4134206,
        ["4134207"] = self.OnSubFinish4134207,
        ["4134208"] = self.OnSubFinish4134208,
        ["4134209"] = self.OnSubFinish4134209,
        ["4134210"] = self.OnSubFinish4134210,
        ["4134211"] = self.OnSubFinish4134211,
        ["4134212"] = self.OnSubFinish4134212,
        ["4134213"] = self.OnSubFinish4134213,
        ["4134214"] = self.OnSubFinish4134214,
        ["4134215"] = self.OnSubFinish4134215
    }
end

function Quest41342:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4134201"] = self.OnSubFailed4134201,
        ["4134202"] = self.OnSubFailed4134202,
        ["4134203"] = self.OnSubFailed4134203,
        ["4134204"] = self.OnSubFailed4134204,
        ["4134205"] = self.OnSubFailed4134205,
        ["4134206"] = self.OnSubFailed4134206,
        ["4134207"] = self.OnSubFailed4134207,
        ["4134208"] = self.OnSubFailed4134208,
        ["4134209"] = self.OnSubFailed4134209,
        ["4134210"] = self.OnSubFailed4134210,
        ["4134211"] = self.OnSubFailed4134211,
        ["4134212"] = self.OnSubFailed4134212,
        ["4134213"] = self.OnSubFailed4134213,
        ["4134214"] = self.OnSubFailed4134214
    }
end

function Quest41342:Start()
    print("Start")
end

function Quest41342:OnDestroy()
    print("OnDestroy")
end

function Quest41342:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41342:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41342:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc203801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc200501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc209501Data.alias, 3)
        self:NotifyTo(npcs.Npc2038Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2005Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2095Data.alias, 0, true)
        self:UnSpawn(gadgets.Gadget70710308Data.alias)
        self:UnSpawn(gadgets.Gadget70710308Data1.alias)
        self:UnSpawn(gadgets.Gadget70710308Data2.alias)
        self:UnSpawn(gadgets.Gadget70710307Data.alias)
        self:UnSpawn(gadgets.Gadget70710307Data1.alias)
    end)
end

function Quest41342:OnSubStart4134201(arg1)
    print("OnSubStart4134201")
    self:NotifyTo(npcs.Npc2095Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc209501Data.id)
end

function Quest41342:OnSubFinish4134201(arg1)
    print("OnSubFinish4134201")
end

function Quest41342:OnSubFailed4134201(arg1)
    print("OnSubFailed4134201")
end

function Quest41342:OnSubStart4134202(arg1)
    print("OnSubStart4134202")
end

function Quest41342:OnSubFinish4134202(arg1)
    print("OnSubFinish4134202")
end

function Quest41342:OnSubFailed4134202(arg1)
    print("OnSubFailed4134202")
end

function Quest41342:OnSubStart4134203(arg1)
    print("OnSubStart4134203")
end

function Quest41342:OnSubFinish4134203(arg1)
    print("OnSubFinish4134203")
end

function Quest41342:OnSubFailed4134203(arg1)
    print("OnSubFailed4134203")
end

function Quest41342:OnSubStart4134204(arg1)
    print("OnSubStart4134204")
    self:CreateQuestNpc(arg1, npcs.Npc203801Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc200501Data.id, 0)
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134204(arg1)
    print("OnSubFinish4134204")
    self:DestroyQuestNpcActor(npcs.Npc209501Data.alias, 3)
    self:NotifyTo(npcs.Npc2095Data.alias, 0, true)
end

function Quest41342:OnSubFailed4134204(arg1)
    print("OnSubFailed4134204")
end

function Quest41342:OnSubStart4134205(arg1)
    print("OnSubStart4134205")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc203801Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc200501Data.id)
end

function Quest41342:OnSubFinish4134205(arg1)
    print("OnSubFinish4134205")
    self.ActionSafeCall(self, function()
        self:CreateSpeechBubbleTask(npcs.Npc200501Data.id, 413420601, 4, false, 4, 7)
        self:EnterSceneLookCamera({x = -684.023, y = 218.183, z = 86.202}, 0, 4, true, false)
        globalActor:EnablePlayerInput(false)
        self:CallDelay(4, function()
            globalActor:EnablePlayerInput(true)
        end)
    end)
end

function Quest41342:OnSubFailed4134205(arg1)
    print("OnSubFailed4134205")
end

function Quest41342:OnSubStart4134206(arg1)
    print("OnSubStart4134206")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134206(arg1)
    print("OnSubFinish4134206")
end

function Quest41342:OnSubFailed4134206(arg1)
    print("OnSubFailed4134206")
end

function Quest41342:OnSubStart4134207(arg1)
    print("OnSubStart4134207")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710308Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710308Data.id, 2)
    self:SpawnGadget(arg1, gadgets.Gadget70710308Data.id, 3)
end

function Quest41342:OnSubFinish4134207(arg1)
    print("OnSubFinish4134207")
end

function Quest41342:OnSubFailed4134207(arg1)
    print("OnSubFailed4134207")
end

function Quest41342:OnSubStart4134208(arg1)
    print("OnSubStart4134208")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134208(arg1)
    print("OnSubFinish4134208")
end

function Quest41342:OnSubFailed4134208(arg1)
    print("OnSubFailed4134208")
end

function Quest41342:OnSubStart4134209(arg1)
    print("OnSubStart4134209")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134209(arg1)
    print("OnSubFinish4134209")
end

function Quest41342:OnSubFailed4134209(arg1)
    print("OnSubFailed4134209")
end

function Quest41342:OnSubStart4134210(arg1)
    print("OnSubStart4134210")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc203801Data.id)
end

function Quest41342:OnSubFinish4134210(arg1)
    print("OnSubFinish4134210")
end

function Quest41342:OnSubFailed4134210(arg1)
    print("OnSubFailed4134210")
end

function Quest41342:OnSubStart4134211(arg1)
    print("OnSubStart4134211")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710307Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710307Data.id, 2)
end

function Quest41342:OnSubFinish4134211(arg1)
    print("OnSubFinish4134211")
end

function Quest41342:OnSubFailed4134211(arg1)
    print("OnSubFailed4134211")
end

function Quest41342:OnSubStart4134212(arg1)
    print("OnSubStart4134212")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134212(arg1)
    print("OnSubFinish4134212")
end

function Quest41342:OnSubFailed4134212(arg1)
    print("OnSubFailed4134212")
end

function Quest41342:OnSubStart4134213(arg1)
    print("OnSubStart4134213")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

function Quest41342:OnSubFinish4134213(arg1)
    print("OnSubFinish4134213")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc203801Data.alias, 3)
        end)
    end)
end

function Quest41342:OnSubFailed4134213(arg1)
    print("OnSubFailed4134213")
end

function Quest41342:OnSubStart4134214(arg1)
    print("OnSubStart4134214")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc203801Data.id)
end

function Quest41342:OnSubFinish4134214(arg1)
    print("OnSubFinish4134214")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc203801Data.alias, 3)
            self:DestroyQuestNpcActor(npcs.Npc200501Data.alias, 3)
            self:NotifyTo(npcs.Npc2038Data.alias, 0, true)
            self:NotifyTo(npcs.Npc2005Data.alias, 0, true)
        end)
    end)
end

function Quest41342:OnSubFailed4134214(arg1)
    print("OnSubFailed4134214")
end

function Quest41342:OnSubStart4134215(arg1)
    print("OnSubStart4134214")
    self:NotifyTo(npcs.Npc2038Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2005Data.alias, 1, true)
end

return Quest41342

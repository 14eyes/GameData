require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71822 = class("Quest71822", QuestActorProxy)
Quest71822.defaultAlias = "Quest71822"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest71822:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest71822:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182201"] = self.OnSubStart7182201,
        ["7182202"] = self.OnSubStart7182202,
        ["7182203"] = self.OnSubStart7182203,
        ["7182204"] = self.OnSubStart7182204,
        ["7182207"] = self.OnSubStart7182207,
        ["7182205"] = self.OnSubStart7182205,
        ["7182206"] = self.OnSubStart7182206
    }
end

function Quest71822:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182201"] = self.OnSubFinish7182201,
        ["7182202"] = self.OnSubFinish7182202,
        ["7182203"] = self.OnSubFinish7182203,
        ["7182204"] = self.OnSubFinish7182204,
        ["7182207"] = self.OnSubFinish7182207,
        ["7182205"] = self.OnSubFinish7182205,
        ["7182206"] = self.OnSubFinish7182206
    }
end

function Quest71822:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182201"] = self.OnSubFailed7182201,
        ["7182202"] = self.OnSubFailed7182202,
        ["7182203"] = self.OnSubFailed7182203,
        ["7182204"] = self.OnSubFailed7182204,
        ["7182207"] = self.OnSubFailed7182207,
        ["7182205"] = self.OnSubFailed7182205,
        ["7182206"] = self.OnSubFailed7182206
    }
end

function Quest71822:Start()
    print("Start")
end

function Quest71822:OnDestroy()
    print("OnDestroy")
end

function Quest71822:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71822:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71822:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:UnSpawn(gadgets.Gadget71700195Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc221101Data.alias, 3)
    self:SorayaRecover()
end

function Quest71822:SorayaHide()
    print("SorayaHide")
    self:NotifyTo("Npc2211", 1, true)
end

function Quest71822:SorayaRecover()
    print("SorayaRecover")
    self:NotifyTo("Npc2211", 0, true)
end

function Quest71822:OnSubStart7182201(arg1)
    print("OnSubStart7182201")
    self:CreateQuestNpc(arg1, npcs.Npc221101Data.id, 1)
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182201(arg1)
    print("OnSubFinish7182201")
end

function Quest71822:OnSubFailed7182201(arg1)
    print("OnSubFailed7182201")
end

function Quest71822:OnSubStart7182202(arg1)
    print("OnSubStart7182202")
    self:UnSpawn(gadgets.Gadget71700195Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700195Data.id, 1, 0)
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182202(arg1)
    print("OnSubFinish7182202")
    self:UnSpawn(gadgets.Gadget71700195Data.alias)
end

function Quest71822:OnSubFailed7182202(arg1)
    print("OnSubFailed7182202")
end

function Quest71822:OnSubStart7182203(arg1)
    print("OnSubStart7182203")
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182203(arg1)
    print("OnSubFinish7182203")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc221101Data.alias, 3)
    end)
end

function Quest71822:OnSubFailed7182203(arg1)
    print("OnSubFailed7182203")
end

function Quest71822:OnSubStart7182204(arg1)
    print("OnSubStart7182204")
    actorMgr:CreateActorWithPos(datas.Q7182204Trigger_.alias, datas.Q7182204Trigger_.script, datas.Q7182204Trigger_.id, 0, datas.Q7182204Trigger_.point.pos, datas.Q7182204Trigger_.point.rot, true, false, 3)
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182204(arg1)
    print("OnSubFinish7182204")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest71822:OnSubFailed7182204(arg1)
    print("OnSubFailed7182204")
end

function Quest71822:OnSubStart7182207(arg1)
    print("OnSubStart7182207")
end

function Quest71822:OnSubFinish7182207(arg1)
    print("OnSubFinish7182207")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc221101Data.id, 1)
    end)
end

function Quest71822:OnSubFailed7182207(arg1)
    print("OnSubFailed7182207")
end

function Quest71822:OnSubStart7182205(arg1)
    print("OnSubStart7182205")
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182205(arg1)
    print("OnSubFinish7182205")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc221101Data.id, 1)
    end)
end

function Quest71822:OnSubFailed7182205(arg1)
    print("OnSubFailed7182205")
end

function Quest71822:OnSubStart7182206(arg1)
    print("OnSubStart7182206")
    self:SorayaHide()
end

function Quest71822:OnSubFinish7182206(arg1)
    print("OnSubFinish7182206")
    self:SorayaRecover()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc221101Data.alias, 3)
    end)
end

function Quest71822:OnSubFailed7182206(arg1)
    print("OnSubFailed7182206")
end

return Quest71822

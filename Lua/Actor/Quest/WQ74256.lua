require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74256 = class("Quest74256", QuestActorProxy)
Quest74256.defaultAlias = "Quest74256"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74256:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74256:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7425601"] = self.OnSubStart7425601,
        ["7425602"] = self.OnSubStart7425602,
        ["7425603"] = self.OnSubStart7425603
    }
end

function Quest74256:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7425601"] = self.OnSubFinish7425601,
        ["7425602"] = self.OnSubFinish7425602,
        ["7425603"] = self.OnSubFinish7425603
    }
end

function Quest74256:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7425602"] = self.OnSubFailed7425602, ["7425603"] = self.OnSubFailed7425603}
end

function Quest74256:Start()
    print("Start")
end

function Quest74256:OnDestroy()
    print("OnDestroy")
end

function Quest74256:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74256:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74256:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7425603N1073Trigger")
    this:ActorDestroy("Q7425601Trigger", 74256)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177013, "6")
    this:RemoveLocalGadget(73177013, "5")
    this:RemoveLocalGadget(73177012, "4")
    this:RemoveLocalGadget(73167060, "9")
    this:RemoveLocalGadget(73177041, "7")
    this:RemoveLocalGadget(73177010, "1")
    this:RecycleAllRes()
end

function Quest74256:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7425601Trigger", 74256)
end

function Quest74256:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7425601 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7425602 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    else
        if false then
        end
    end
end

function Quest74256:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest74256:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest74256:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74256:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74256:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3460.074, y = 459, z = 3674.878}, 30, 73177007, 10000133, 7425602) then
        actorUtils.FinishQuestWithParam({false}, {7425602})
    else
        if this:GetSubQuestState(7425602) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74256:OnSubStart7425601(arg1)
    print("OnSubStart7425601")
    actorMgr:CreateActorWithPos("Q7425601Trigger", "Actor/Gadget/Q7425601Trigger", 70900002, 0, points.Q7425601Trigger.pos, points.Q7425601Trigger.rot, true, false, 3, nil, 0, 74256)
end

function Quest74256:OnSubFinish7425601(arg1)
    print("OnSubFinish7425601")
end

function Quest74256:OnSubStart7425602(arg1)
    print("OnSubStart7425602")
    this:RepeatSitCheck()
end

function Quest74256:OnSubFinish7425602(arg1)
    print("OnSubFinish7425602")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74256:OnSubFailed7425602(arg1)
    print("OnSubFailed7425602")
    this:RecycleAllRes()
end

function Quest74256:OnSubStart7425603(arg1)
    print("OnSubStart7425603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7425603, 0, 40, 0.5, npcs.Npc1073.id)
    this:CreateLocalGadget(73177011, "3", {x = 3475.348, y = 459.004, z = 3679.495}, {x = 0, y = 17.141, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3475.984, y = 459.004, z = 3681.635}, {x = 0, y = 200, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "6", {x = 3475.617, y = 459.782, z = 3680.967}, {x = 0, y = 238.487, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "5", {x = 3475.611, y = 459.782, z = 3680.135}, {x = 0, y = 79.305, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "4", {x = 3475.391, y = 459.782, z = 3680.678}, {x = 0, y = 56.277, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "9", {x = 3475.359, y = 459.782, z = 3680.289}, {x = 0, y = 238.487, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "9", {x = 3475.856, y = 459.786, z = 3680.866}, {x = 0, y = 46.274, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "7", {x = 3475.953, y = 459.782, z = 3680.386}, {x = 0, y = 238.487, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "1", {x = 3475.644, y = 459.004, z = 3680.572}, {x = 0, y = 200, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74256:OnSubFinish7425603(arg1)
    print("OnSubFinish7425603")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1073.alias)
        this:RecycleAllRes()
    end)
end

function Quest74256:OnSubFailed7425603(arg1)
    print("OnSubFailed7425603")
    this:RecycleAllRes()
end

return Quest74256

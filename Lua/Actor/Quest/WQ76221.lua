require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76221 = class("Quest76221", QuestActorProxy)
Quest76221.defaultAlias = "Quest76221"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76221:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76221:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622101"] = self.OnSubStart7622101,
        ["7622102"] = self.OnSubStart7622102,
        ["7622103"] = self.OnSubStart7622103
    }
end

function Quest76221:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622101"] = self.OnSubFinish7622101,
        ["7622102"] = self.OnSubFinish7622102,
        ["7622103"] = self.OnSubFinish7622103
    }
end

function Quest76221:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7622102"] = self.OnSubFailed7622102}
end

function Quest76221:Start()
    print("Start")
end

function Quest76221:OnDestroy()
    print("OnDestroy")
end

function Quest76221:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76221:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76221:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7622103N10200Trigger")
    this:ActorDestroy("Q7622101Trigger", 76221)
    this:SafeDestroyQuestNpc(npcs.Npc10200.alias, 3)
    this:RemoveLocalGadget(73177014, "0")
    this:RemoveLocalGadget(73177012, "20")
    this:RemoveLocalGadget(73167060, "2")
    this:RemoveLocalGadget(73167060, "1")
    this:RemoveLocalGadget(73177013, "9")
    this:RemoveLocalGadget(73177013, "10")
    this:RemoveLocalGadget(73177013, "8")
    this:RemoveLocalGadget(73177013, "7")
    this:RemoveLocalGadget(73177011, "4")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "5")
    this:RemoveLocalGadget(73177010, "12")
    this:RemoveLocalGadget(73177011, "13")
    this:RecycleAllRes()
end

function Quest76221:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7622101Trigger", 76221)
end

function Quest76221:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7622101 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7622102 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76221:ActorDestroy(arg1, arg2)
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

function Quest76221:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76221:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76221:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76221:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3236.828, y = 406.701, z = 9928.058}, 30, 73177007, 10000133, 7622102) then
        actorUtils.FinishQuestWithParam({false}, {7622102})
    else
        if this:GetSubQuestState(7622102) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76221:OnSubStart7622101(arg1)
    print("OnSubStart7622101")
    actorMgr:CreateActorWithPos("Q7622101Trigger", "Actor/Gadget/Q7622101Trigger", 70900002, 0, points.Q7622101Trigger.pos, points.Q7622101Trigger.rot, true, false, 3, nil, 0, 76221)
end

function Quest76221:OnSubFinish7622101(arg1)
    print("OnSubFinish7622101")
end

function Quest76221:OnSubStart7622102(arg1)
    print("OnSubStart7622102")
    this:RepeatSitCheck()
end

function Quest76221:OnSubFinish7622102(arg1)
    print("OnSubFinish7622102")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76221:OnSubFailed7622102(arg1)
    print("OnSubFailed7622102")
    this:RecycleAllRes()
end

function Quest76221:OnSubStart7622103(arg1)
    print("OnSubStart7622103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7622103, 0, 40, 0.5, npcs.Npc10200.id)
    this:CreateLocalGadget(73177014, "0", {x = 3233.753, y = 408, z = 9943.211}, {x = 0, y = 62.233, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "20", {x = 3233.404, y = 407.979, z = 9943.33}, {x = 0, y = 17.648, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "2", {x = 3233.064, y = 407.979, z = 9943.284}, {x = 0, y = 355.51, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "1", {x = 3233.258, y = 407.979, z = 9943.012}, {x = 0, y = 279.199, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "9", {x = 3233.061, y = 407.979, z = 9943.533}, {x = 0, y = 172.893, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "10", {x = 3233.675, y = 407.979, z = 9943.402}, {x = 0, y = 231.68, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "8", {x = 3233.582, y = 407.979, z = 9942.825}, {x = 0, y = 20.017, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "7", {x = 3233.018, y = 407.979, z = 9942.94}, {x = 0, y = 55.329, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "4", {x = 3232.302, y = 407.201, z = 9942.473}, {x = 0, y = 56.878, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "5", {x = 3234.239, y = 407.201, z = 9943.785}, {x = 0, y = 241.007, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "12", {x = 3233.343, y = 407.201, z = 9943.208}, {x = 0, y = 56.878, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76221:OnSubFinish7622103(arg1)
    print("OnSubFinish7622103")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc10200.alias)
        this:RecycleAllRes()
    end)
end

return Quest76221
